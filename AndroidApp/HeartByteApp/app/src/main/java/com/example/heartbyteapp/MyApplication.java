package com.example.heartbyteapp;

import android.app.Application;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.ml.modeldownloader.CustomModel;
import com.google.firebase.ml.modeldownloader.CustomModelDownloadConditions;
import com.google.firebase.ml.modeldownloader.DownloadType;
import com.google.firebase.ml.modeldownloader.FirebaseModelDownloader;


import org.tensorflow.lite.Interpreter;

import java.nio.ByteBuffer;

public class MyApplication extends Application {
    private CustomModel model;
    private Interpreter interpreter;

    public CustomModel getModel() {
        return model;
    }

    public void inference(ByteBuffer input, ByteBuffer output) {
        // input and output shape
        // in: [1, 875, 1] dtype=float
        // out: [1, 1] dtype=float
        interpreter.run(input, output);
    }

    public void downloadModel() {
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
