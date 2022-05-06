package com.example.heartbyteapp;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.nio.ByteBuffer;
import java.util.List;
import java.util.UUID;

public class BleService extends Service {



    public static final String TAG = "BLE Service";
    public final static String ACTION_GATT_CONNECTED =
            "com.example.bluetooth.le.ACTION_GATT_CONNECTED";
    public final static String ACTION_GATT_DISCONNECTED =
            "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED";
    private static final int STATE_DISCONNECTED = 0;
    private static final int STATE_CONNECTED = 2;

    private final UUID HR_ID = UUID.fromString("HRID");         boolean hr_flag   = false;
    private final UUID SPO2_ID = UUID.fromString("SPO2ID");     boolean spo2_flag = false;
    private final UUID PPG0_ID = UUID.fromString("PPG0_ID");    boolean ppg0_flag = false;
    private final UUID PPG1_ID = UUID.fromString("PPG1_ID");    boolean ppg1_flag = false;
    private final UUID PPG2_ID = UUID.fromString("PPG2_ID");    boolean ppg2_flag = false;
    private final UUID PPG3_ID = UUID.fromString("PPG3_ID");    boolean ppg3_flag = false;
    private final UUID PPG4_ID = UUID.fromString("PPG4_ID");    boolean ppg4_flag = false;
    private final UUID PPG5_ID = UUID.fromString("PPG5_ID");    boolean ppg5_flag = false;
    private final UUID PPG6_ID = UUID.fromString("PPG6_ID");    boolean ppg6_flag = false;
    private final UUID PPG7_ID = UUID.fromString("PPG7_ID");    boolean ppg7_flag = false;
    private final UUID PPG8_ID = UUID.fromString("PPG8_ID");    boolean ppg8_flag = false;
    private final UUID PPG9_ID = UUID.fromString("PPG9_ID");    boolean ppg9_flag = false;

    private int hr;
    private int spo2;
    private int ppg[] = new int[875];
    private float sbp, dbp;

    private FirebaseUser user;
    private String userID;
    DatabaseReference hr_db;
    DatabaseReference spo2_db;
    DatabaseReference sbp_db;
    DatabaseReference dbp_db;




    private BluetoothAdapter blAdapter;
    private BluetoothGatt blGatt;
    private int connectState;

    public BleService() {
    }



    public boolean initialize() {

        user = FirebaseAuth.getInstance().getCurrentUser();
        userID = user.getUid(); // refrence current user and gets unique ID
        hr_db = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("HeartRate").child(userID);
        spo2_db = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("SpO2").child(userID);
        sbp_db = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("SBP").child(userID);
        dbp_db = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("DBP").child(userID);

        blAdapter = BluetoothAdapter.getDefaultAdapter();
        if(blAdapter == null) {
            Log.e(TAG, "Unable to obtain a BluetoothAdapter.");
            return false;
        }
        return true;
    }

    public boolean connect(final String address) {
        if (blAdapter == null || address == null) {
            Log.w(TAG, "BluetoothAdapter not initialized or unspecified address.");
            return false;
        }
        try {
            final BluetoothDevice device = blAdapter.getRemoteDevice(address);
            blGatt = device.connectGatt(this, false, gattCallback);
            return true;
        } catch (IllegalArgumentException exception) {
            Log.w(TAG, "Device not found with provided address.");
            return false;
        }
    }

    private final BluetoothGattCallback  gattCallback = new BluetoothGattCallback() {
        @Override
        public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
            if(newState == BluetoothProfile.STATE_CONNECTED) {
                // successful connection to GATT Server
                connectState = STATE_CONNECTED;
//                broadcastUpdate(ACTION_GATT_CONNECTED);
                blGatt.discoverServices();

            } else if(newState == BluetoothProfile.STATE_DISCONNECTED) {
                // disconnected from the GATT Server
                connectState = STATE_DISCONNECTED;
//                broadcastUpdate(ACTION_GATT_DISCONNECTED);

            }
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt gatt, int status) {
            if(status == BluetoothGatt.GATT_SUCCESS) {
//                broadcastUpdate("ACTION_GATT_SERVICES_DISCOVERED")

            } else {
                Log.w(TAG, "onServicesDiscovered received: " + status);
            }
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic charas) {
            // read characterstics
            gatt.readCharacteristic(charas);
            // perform ML

            // send data to cloud
        }

        @Override
        public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
            if (status == BluetoothGatt.GATT_SUCCESS) {
                Log.w(TAG, "CHARACTERISTIC READ" + status);
                byte[] data = characteristic.getValue();
                // decode characteristic
                UUID id = characteristic.getUuid();
                if(id.equals(HR_ID)) {
                    int hr = ( ((int)data[1]) >> 8 ) | ( (int)data[0] );
                    hr_flag = true;
                } else if(id.equals(SPO2_ID)) {
                    int spo2 = ( ((int)data[1]) >> 8 ) | ( (int)data[0] );
                    spo2_flag = true;
                } else if(id.equals(PPG0_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[i>>1] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg0_flag = true;
                } else if(id.equals(PPG1_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg1_flag = true;
                } else if(id.equals(PPG2_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*2] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg2_flag = true;
                } else if(id.equals(PPG3_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*3] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg3_flag = true;
                } else if(id.equals(PPG4_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*4] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg4_flag = true;
                } else if(id.equals(PPG5_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*5] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg5_flag = true;
                } else if(id.equals(PPG6_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*6] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg6_flag = true;
                } else if(id.equals(PPG7_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*7] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg7_flag = true;
                } else if(id.equals(PPG8_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*8] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg8_flag = true;
                } else if(id.equals(PPG9_ID)) {
                    for(int i=0; i<data.length; i+=2) {
                        ppg[(i>>1)+data.length*9] = ( ((int)data[i+1]) >> 8 ) | ( (int)data[i]);
                    }
                    ppg9_flag = true;
                }
                // if all flags are raised
                if(hr_flag && spo2_flag && ppg0_flag && ppg1_flag && ppg2_flag && ppg3_flag && ppg4_flag
                && ppg5_flag && ppg6_flag && ppg7_flag && ppg8_flag) {
                    hr_flag   = false;
                    spo2_flag = false;
                    ppg0_flag = false;
                    ppg1_flag = false;
                    ppg2_flag = false;
                    ppg3_flag = false;
                    ppg4_flag = false;
                    ppg5_flag = false;
                    ppg6_flag = false;
                    ppg7_flag = false;
                    ppg8_flag = false;
                    ppg9_flag = false;

                    // load hr into cloud
                    Long ts = System.currentTimeMillis()/1000;
                    UserDataPush userdatapush = new UserDataPush(ts,hr);
                    hr_db.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userdatapush);
                    // load spo2 into cloud
                    UserDataPushSpO2 userdatapushspo2 = new UserDataPushSpO2(ts,spo2);
                    spo2_db.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userdatapushspo2);
                    // perform machine learning
                    ByteBuffer ml_in = ByteBuffer.allocateDirect(ppg.length*4);
                    ByteBuffer ml_out = ByteBuffer.allocateDirect(2*4);
                    for(int i=0; i<ppg.length; i++) {
                        ml_in.putFloat((float)ppg[i]);
                    }

                    MyApplication app = (MyApplication)getApplication();
                    app.inference(ml_in, ml_out);
                    sbp = ml_out.get(0);
                    dbp = ml_out.get(1);

                    UserDataPushSBP userdatapushsbp = new UserDataPushSBP(ts,sbp);
                    sbp_db.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userdatapushsbp);
                    UserDataPushDBP userdatapushdbp = new UserDataPushDBP(ts,dbp);
                    dbp_db.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userdatapushdbp);
                }
            }
        }

    };

    private void parseServices(List<BluetoothGattService> services) {
        List<BluetoothGattCharacteristic> charas;
        charas = services.get(0).getCharacteristics();

    }

    private void broadcastUpdate(final String action) {
        final Intent intent = new Intent(action);
        sendBroadcast(intent);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return Service.START_STICKY;
    }

    @Override
    public void onDestroy(){
        close();
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }

    class LocalBinder extends Binder {
        public BleService getService() {
            return BleService.this;
        }
    }

    @Override
    public boolean onUnbind(Intent intent) {
        close();
        return super.onUnbind(intent);
    }

    private void close() {

        if (blGatt == null) {
            return;
        }
        blGatt.close();
        blGatt = null;
    }


}