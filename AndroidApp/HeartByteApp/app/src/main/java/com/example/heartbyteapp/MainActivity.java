package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {

//    public static final String EXTRA_MESSAGE = "com.example.heartbyteapp.MESSAGE";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);

        // Setup Spinner
        Spinner mode_spin = findViewById(R.id.mode_spinner);
        mode_spin.setOnItemSelectedListener(this);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, R.layout.mode_spinner, getResources().getStringArray(R.array.modes_array));
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        mode_spin.setAdapter(adapter);
    }

    /*
     * Button press for "MEASURE HR"
     */
    public void measureHR(View view){
        Intent intent = new Intent(this, MeasureActivity.class);
        startActivity(intent);
    }

    /*
     * Button press for "VIEW ANALYTICS"
     */
    public void viewAnalytics(View view){
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
}