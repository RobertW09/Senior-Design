package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

public class DashboardActivityHR extends AppCompatActivity implements AdapterView.OnItemSelectedListener, View.OnClickListener{
    private Button SettingsButton, DashboardButton, HomeButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard_hr);

        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);
    // Spinner Set up
        Spinner spinner = (Spinner) findViewById(R.id.dashboard_data_selection_spinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,R.array.dashboard_spinner, android.R.layout.simple_spinner_dropdown_item);
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(this);
    }

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

        String selected = adapterView.getSelectedItem().toString();
        Integer SpinnerPosition = i;

        if(selected.equals("SpO2")){
            Intent intent = new Intent(DashboardActivityHR.this, DashboardActivitySpO2.class);
            intent.putExtra("i",SpinnerPosition);
            startActivity(intent);
        }
        else if (selected.equals("Blood Pressure")){
            Intent intent = new Intent(DashboardActivityHR.this, DashboardActivityBP.class);
            intent.putExtra("i",SpinnerPosition);
            startActivity(intent);
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

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
                startActivity(new Intent(this, DashboardActivityHR.class));
                break;

        }
    }
}