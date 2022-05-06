package com.example.heartbyteapp;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;

import com.clj.fastble.BleManager;

public class MeasureActivity extends AppCompatActivity {
    // this is a reference on what happens when we click a given button

    //ideally we would like to display the value on  this page,
        //lanching a new page for the user to view
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_measure);

        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.measure_toolbar);
        setSupportActionBar(toolbar);

        // enable up button in toolbar
        ActionBar actionbar = getSupportActionBar();
        assert actionbar != null;
        actionbar.setDisplayHomeAsUpEnabled(true);

        //ppgConnection when launched when MeasureActivity is started
        Intent intent = new Intent(this, ppgService.class);
        startService(intent);
    }

    @Override
    protected void onStart() {
        super.onStart();
        BleManager.getInstance();
    }

    @Override
    protected void onRestart() {

        super.onRestart();
    }

    @Override
    protected void onResume() {

        super.onResume();
    }
    @Override
    protected void onPause() {

        super.onPause();
    }
    @Override
    protected void onStop() {
        super.onStop();
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}