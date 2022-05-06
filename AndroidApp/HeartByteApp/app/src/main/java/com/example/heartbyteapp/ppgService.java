package com.example.heartbyteapp;
import android.Manifest;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGatt;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.clj.blesample.adapter.DeviceAdapter;
import com.clj.blesample.comm.ObserverManager;
import com.clj.blesample.operation.OperationActivity;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.scan.BleScanRuleConfig;
import com.clj.fastble.bluetooth.BleBluetooth;
import com.example.heartbyteapp.R;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import android.content.Intent;

public class ppgService {
    //final BleDevice bleDevice = ((OperationActivity) getActivity()).getBleDevice();

    //this class is to continuously poll the ppgCharacteristics
    //  and to send data to the ml MODEL as well as the cloud at the same time


    //ppgService is launched through the button press

    //perhaps we have an activity that launches the service


    protected void onHandleIntent(Intent workIntent) {
        BleManager.getInstance();
        // To put its results in the UI, you have to send them to an Activity
        /*
        if (workIntent != null){
            // do stuff here

            BleManager.getInstance().notify( bleDevice,
                    uuid_service,
                    uuid_characteristic_notify,
                    new BleNotifyCallback() {
                        @Override
                        public void onNotifySuccess() {
                            // 打开通知操作成功
                        }

                        @Override
                        public void onNotifyFailure(BleException exception) {
                            // 打开通知操作失败
                        }

                        @Override
                        public void onCharacteristicChanged(byte[] data) {
                            // 打开通知后，设备发过来的数据将在这里出现
                        }
                    });

            BleManager.getInstance().setCharacteristicNotification (BluetoothGattCharacteristic characteristic, boolean enable)

        }
        */

        // Gets data from the incoming Intent
        String dataString = workIntent.getDataString();

        // Do work here, based on the contents of dataString

    }

}
