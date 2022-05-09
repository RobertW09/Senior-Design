package com.example.heartbyteapp;

import android.app.Application;
import android.util.Log;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.ml.modeldownloader.CustomModel;
import com.google.firebase.ml.modeldownloader.CustomModelDownloadConditions;
import com.google.firebase.ml.modeldownloader.DownloadType;
import com.google.firebase.ml.modeldownloader.FirebaseModelDownloader;


import org.tensorflow.lite.Interpreter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class MyApplication extends Application {
    private static final String TAG = "BLOOD PRESSURE";
    private CustomModel model;
    private Interpreter interpreter;

    byte ppg_data[];
    int sampleCount;
    float SBP_data;
    float DBP_data;

    public CustomModel getModel() {
        return model;
    }

    public void loadSample(int section, byte input[]) {
        for(int i=0; i<125; i++) {
            ppg_data[section+i] = input[i];
        }
        sampleCount++;
        if(sampleCount==6) {
            inference();
            sampleCount = 0;
        }
    }


    public void inference() {
        ByteBuffer input = ByteBuffer.wrap(ppg_data);
        ByteBuffer output = ByteBuffer.allocateDirect(875*4).order(ByteOrder.nativeOrder());
        // input and output shape
        // in: [1, 875, 1] dtype=float
        // out: [1, 1] dtype=float
        interpreter.run(input, output);

        FloatBuffer BP = output.asFloatBuffer();
        try {
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(getAssets().open("custom_labels.txt")));
            for (int i = 0; i < BP.capacity(); i++) {
                String label = reader.readLine();
                float probability = BP.get(i);
                Log.i(TAG, String.format("%s: %1.4f", label, probability));
            }
        } catch (IOException e) {
            // File not found?
        }
    }

    public void downloadModel() {
        ppg_data = new byte[875];
        CustomModelDownloadConditions conditions = new CustomModelDownloadConditions.Builder()
                .requireWifi()
                .build();
        FirebaseModelDownloader.getInstance()
                .getModel("LSTM_PPG_NONMIXED", DownloadType.LOCAL_MODEL, conditions)
                .addOnSuccessListener(new OnSuccessListener<CustomModel>() {
                    @Override
                    public void onSuccess(CustomModel newModel) {
                        // Download complete. Depending on your app, you could enable
                        // the ML feature, or switch from the local model to the remote
                        // model, etc.
                        model = newModel;
                        interpreter = new Interpreter(model.getFile());
                    }
                });
    }
}
