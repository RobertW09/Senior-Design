package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextClock;
import android.widget.TextView;
import android.widget.Toast;

import com.clj.blesample.adapter.DeviceAdapter;
import com.clj.blesample.comm.ObserverManager;
import com.clj.blesample.operation.OperationActivity;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.scan.BleScanRuleConfig;


import com.clj.fastble.utils.HexUtil;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import java.util.List;
import java.util.UUID;
import android.bluetooth.BluetoothAdapter;


public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener, View.OnClickListener {

    //    public static final String EXTRA_MESSAGE = "com.example.heartbyteapp.MESSAGE";
    private FirebaseUser user;
    private DatabaseReference refrence;

    private String userID;
    private Button SettingsButton;
    private Button HomeButton;
    private Button DashboardButton;

    private BluetoothAdapter mBluetoothAdapter;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);


        // Setup Toolbar
        Toolbar toolbar = (Toolbar) findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);

        // Setup Spinner
        Spinner mode_spin = findViewById(R.id.mode_spinner);
        mode_spin.setOnItemSelectedListener(this);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, R.layout.mode_spinner, getResources().getStringArray(R.array.modes_array));
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        mode_spin.setAdapter(adapter);


        user = FirebaseAuth.getInstance().getCurrentUser();
        refrence = FirebaseDatabase.getInstance().getReference("Users").child("AccountDetails");
        userID = user.getUid(); // refrence current user and gets unique ID

        final TextView user_name_textview = (TextView) findViewById(R.id.users_name_text);

        // pull data from firebase (users name)
        refrence.child(userID).addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                User userprofile = snapshot.getValue(User.class);

                if (userprofile != null) {
                    String name = userprofile.fullname;
                    String[] firstname = name.split(" ");
                    user_name_textview.setText("Hello, " + firstname[0] + "!");
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {
                Toast.makeText(MainActivity.this, "Error", Toast.LENGTH_SHORT).show();
            }
        });
        /*
        final BleDevice bleDevice = ((OperationActivity) getActivity()).getBleDevice();
        final BluetoothGattCharacteristic characteristic = ((OperationActivity) getActivity()).getCharacteristic();
        //connecting to peripheral on launch
        BleManager.getInstance().connect("3C:61:05:16:6E:2E", new BleGattCallback() {

                    public void onStartConnect() {

                    }

                    public void onConnectFail(BleDevice bleDevice, BleException exception) {

                    }

                    public void onConnectSuccess(BleDevice bleDevice, BluetoothGatt gatt, int status) {

                        //what do we want to do when we connect?

                    }


                    public void onDisConnected(boolean isActiveDisConnected, BleDevice device, BluetoothGatt gatt, int status) {

                    }

                }
        );

         */
    }

    /*
     * Button press for "MEASURE HR"
     */
    public void measureHR(View view) {
        Intent intent = new Intent(this, MeasureActivity.class);
        startActivity(intent);
    }

    public void measurePPG(View view) {
        Intent intent = new Intent(this, ppgActivity.class);
        startActivity(intent);
    }

    /*
     * Button press for "VIEW ANALYTICS"
     */
    public void viewAnalytics(View view) {
        Intent intent = new Intent(this, ViewAnalyticsActivity.class);
        startActivity(intent);
    }

    /*
     * Methods for Spinner interaction
     */
    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }

    // switch activities
    @SuppressLint("MissingPermission")
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.home_button:
                startActivity(new Intent(this, MainActivity.class));
                break;
            case R.id.settings_button:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.dashboard_button:
                startActivity(new Intent(this, DashboardActivity.class));
                break;
            case R.id.ppg_button:
                startActivity(new Intent(this, ppgActivity.class));
                break;
            case R.id.hr_spo2_button:
                startActivity(new Intent(this, instantActivity.class));
                break;
            case R.id.connectToESP:
                Log.i("button pressed","fck");
                BluetoothDevice device = mBluetoothAdapter.getRemoteDevice("3C:61:05:16:6E:2E");
                device.connectGatt(this, false, new BluetoothGattCallback() {
                    @Override
                    public void onPhyUpdate(BluetoothGatt gatt, int txPhy, int rxPhy, int status) {
                        super.onPhyUpdate(gatt, txPhy, rxPhy, status);
                    }

                    @Override
                    public void onPhyRead(BluetoothGatt gatt, int txPhy, int rxPhy, int status) {
                        super.onPhyRead(gatt, txPhy, rxPhy, status);
                    }

                    @Override
                    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
                        super.onConnectionStateChange(gatt, status, newState);
                    }

                    @Override
                    public void onServicesDiscovered(BluetoothGatt gatt, int status) {
                        super.onServicesDiscovered(gatt, status);
                    }

                    @Override
                    public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
                        super.onCharacteristicRead(gatt, characteristic, status);
                    }

                    @Override
                    public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
                        super.onCharacteristicWrite(gatt, characteristic, status);
                    }

                    @Override
                    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {


                        super.onCharacteristicChanged(gatt, characteristic);
                    }

                    @Override
                    public void onDescriptorRead(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
                        super.onDescriptorRead(gatt, descriptor, status);
                    }

                    @Override
                    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
                        super.onDescriptorWrite(gatt, descriptor, status);
                    }

                    @Override
                    public void onReliableWriteCompleted(BluetoothGatt gatt, int status) {
                        super.onReliableWriteCompleted(gatt, status);
                    }

                    @Override
                    public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
                        super.onReadRemoteRssi(gatt, rssi, status);
                    }

                    @Override
                    public void onMtuChanged(BluetoothGatt gatt, int mtu, int status) {
                        super.onMtuChanged(gatt, mtu, status);
                    }

                    @Override
                    public void onServiceChanged(@NonNull BluetoothGatt gatt) {
                        super.onServiceChanged(gatt);
                    }
                });
                break;
        }
    }
/*
    private BluetoothAdapter bluetoothAdapter;
    private BluetoothLeScanner bluetoothLeScanner = bluetoothAdapter.getBluetoothLeScanner();
    private boolean scanning;
    private Handler handler = new Handler();

    // Stops scanning after 10 seconds.
    private static final long SCAN_PERIOD = 10000;

 */
/*
    @SuppressLint("MissingPermission")
    private void scanLeDevice() {
        if (!scanning) {
            // Stops scanning after a predefined scan period.
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    scanning = false;
                    bluetoothLeScanner.stopScan(leScanCallback);
                }
            }, SCAN_PERIOD);

            scanning = true;
            bluetoothLeScanner.startScan(leScanCallback);
        } else {
            scanning = false;
            bluetoothLeScanner.stopScan(leScanCallback);
        }
    }
*/
    public void gotoBLE(View view) {
        Intent intent = new Intent(this, ble.class);
        startActivity(intent);
    }

    private void setMtu(BleDevice bleDevice, int mtu) {
        BleManager.getInstance().setMtu(bleDevice, mtu, new BleMtuChangedCallback() {
            @Override
            public void onSetMTUFailure(BleException exception) {
                //Log.i(TAG, "onsetMTUFailure" + exception.toString());
            }

            @Override
            public void onMtuChanged(int mtu) {
                //Log.i(TAG, "onMtuChanged: " + mtu);
            }
        });
    }

    @SuppressLint("MissingPermission")
    private void setUpNotifications(BleDevice bleDevice){
        BluetoothGatt gatt = BleManager.getInstance().getBluetoothGatt(bleDevice);
        BluetoothGattService ppgService = gatt.getService(UUID.fromString("95ff7bf7-aa6f-4671-82d9-22a8931c5387"));
        BluetoothGattService hrService = gatt.getService(UUID.fromString("95ff7ba0-aa6f-4671-82d9-22a8931c5387"));
        //might need to change this as ppg8 doesnt exist anymore
        BluetoothGattCharacteristic ppg8 = ppgService.getCharacteristic(UUID.fromString("95ff7bff-aa6f-4671-82d9-22a8931c5387"));
        BluetoothGattCharacteristic hrCharacteristic = ppgService.getCharacteristic(UUID.fromString("95ff7bff-aa6f-4671-82d9-22a8931c5387"));

        gatt.setCharacteristicNotification(ppg8,true);
        gatt.setCharacteristicNotification(hrCharacteristic,true);

    }
    /*
    private BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {

        @Override
        public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
            super.onCharacteristicChanged(gatt, characteristic);
        }

        @Override
        public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic,
                                         int status) {
            super.onCharacteristicRead(gatt, characteristic, status);


        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic,
                                          int status) {

            super.onCharacteristicWrite(gatt, characteristic, status);
            Log.i("BLEMainActivity:onCharacteristicWrite", "Status = " + status);


        }

        @Override
        public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
            Log.i("BLEMainActivity:onConnectionStateChanged", "Current status is " + status);

            if (status == BluetoothGatt.GATT_SUCCESS && newState == BluetoothProfile.STATE_CONNECTED) {

                gattOutside = gatt;
                gatt.discoverServices();
                if (gatt.discoverServices()) {
                    updateText("Discovering Services");
                    Log.e("BLEMainActivity:onConnectionStateChange", "Discovering Services");
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    updateText("Failed to Discover Services");
                    Log.e("BLEMainActivity:ConnectionStateChange", "Failed to discover Services");

                }
            } else if (status == BluetoothGatt.GATT_SUCCESS && newState == BluetoothProfile.STATE_DISCONNECTED) {

                Log.e("BLEMainActivity.ConnectionStateChange", "Disconnected State");
                updateText("Disconnected on 1");
            } else if (status != BluetoothGatt.GATT_SUCCESS) {

                Log.e("BLEMainActivity:ConnectionStateChange", "Bluetooth Failure");
                gatt.disconnect();
                updateText("Disconnected on 2");
            }
        }

        @Override
        public void onDescriptorRead(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
            super.onDescriptorRead(gatt, descriptor, status);
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
            super.onDescriptorWrite(gatt, descriptor, status);
        }

        @Override
        public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
            super.onReadRemoteRssi(gatt, rssi, status);
        }

        @Override
        public void onReliableWriteCompleted(BluetoothGatt gatt, int status) {
            super.onReliableWriteCompleted(gatt, status);
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt gatt, int status) {
            super.onServicesDiscovered(gatt, status);
            Log.i("BLEMainActivity:onServicesDiscoverd", "Service Discover completed. Status = " + status);
            updateText("Connected");
            getName(gatt);

        }
        */


    };