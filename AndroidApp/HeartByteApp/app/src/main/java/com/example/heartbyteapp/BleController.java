package com.example.heartbyteapp;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;

public class BleController {

    public static final String TAG = "BLE CONTROLLER";
    final String target_address = "MAC ADDRESS";

    private Context mCont;

    private BluetoothManager bluetoothManager =  (BluetoothManager) mCont.getSystemService(Context.BLUETOOTH_SERVICE);
    private BluetoothLeScanner bleScanner;
    private BluetoothAdapter bleAdapter;
    private BleService bleService;

    private ArrayList<BluetoothDevice> devices = new ArrayList<BluetoothDevice>();
    private boolean scanning;
    private Handler handler = new Handler();

    private static final long SCAN_PERIOD = 10000;

    public BleController(Context cont) {
        mCont = cont;
    }

    public void findBleDevice() {
        bleAdapter = bluetoothManager.getAdapter();
        bleScanner =  bleAdapter.getBluetoothLeScanner();
        if(!scanning) {
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    scanning = false;
                    bleScanner.stopScan(bleScanCallback);
                }
            }, SCAN_PERIOD);
            scanning = true;
            bleScanner.startScan(bleScanCallback);
        } else {
            scanning = false;
            bleScanner.stopScan(bleScanCallback);
        }
    }

    public ScanCallback bleScanCallback =
            new ScanCallback() {
                @Override
                public void onScanResult(int callbackType, ScanResult result) {
                    super.onScanResult(callbackType, result);
                    devices.add(result.getDevice());
                }
            };

    /*
     * Launch a binded service
     */
    public void launchService() {
        // launch binded service
        Intent gattServiceIntent = new Intent(mCont, BleService.class);
        mCont.bindService(gattServiceIntent, serviceConnection, Context.BIND_AUTO_CREATE);
    }

    public void closeService() {
        mCont.unbindService(serviceConnection);
    }

    /*
     * Connect to BLE Service
     */
    private ServiceConnection serviceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            bleService = ((BleService.LocalBinder) service).getService();
            if(bleService != null) {
                // call functions on service to check connection and connect to devices
                if(bleService.initialize()) {
                    bleService.connect(target_address);
                } else {
                    Log.e(TAG, "Unable to initialize Bluetooth");
                }
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            bleService = null;
        }
    };


}
