package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;

import com.google.firebase.auth.FirebaseAuth;

import java.util.ArrayList;

public class SettingsActivity<mBluetoothAdapter, LeDeviceListAdapter, BluetoothLeService> extends AppCompatActivity implements View.OnClickListener {


    // bottom  nav buttons
    private Button SettingsButton;
    private Button HomeButton;
    private Button DashboardButton;

    //settings buttons
    private Button InfoSettings;
    private Button FamilySettings;
    private Button LogoutSettings;
    private Button BluetoothSetting;

    //Firebase
    private FirebaseAuth mAuth;

    private BleController bleCtrl = new BleController(this);;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);


        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);

        // settings buttons
        InfoSettings = (Button) findViewById(R.id.settings_user_info_button);
        InfoSettings.setOnClickListener(this);
        FamilySettings = (Button) findViewById(R.id.settings_family_button);
        FamilySettings.setOnClickListener(this);
        LogoutSettings = (Button) findViewById(R.id.settings_logout_button);
        LogoutSettings.setOnClickListener(this);
        BluetoothSetting = (Button) findViewById(R.id.settings_bluetooth_button);
        BluetoothSetting.setOnClickListener(this);



        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.home_button:
                startActivity(new Intent(this, MainActivity.class));
                break;
            case R.id.settings_button:
                startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.dashboard_button:
                startActivity(new Intent(this, DashboardActivity.class));
                break;
            case R.id.settings_logout_button:
                FirebaseAuth.getInstance().signOut();
                startActivity(new Intent(this, LoginActivity.class));
                break;
            case R.id.settings_family_button:
                startActivity(new Intent(this, FamilyActivity.class));
                break;
            case R.id.settings_bluetooth_button:
//                startActivity(new Intent(this, ble.class));
                bleCtrl.findBleDevice();
                bleCtrl.launchService();
                break;
            case R.id.settings_user_info_button:
                startActivity(new Intent(this, UserInfoActivity.class));
                break;
        }
    }

}