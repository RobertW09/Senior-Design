package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

public class DashboardActivityBP extends AppCompatActivity  implements AdapterView.OnItemSelectedListener, View.OnClickListener{
    private Button SettingsButton, DashboardButton, HomeButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard_bp);


        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);

        // Spinner set up
        Spinner spinner = (Spinner) findViewById(R.id.dashboard_data_selection_spinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,R.array.dashboard_spinner, android.R.layout.simple_spinner_dropdown_item);
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(this);
        // retrieve previous spinner position
        Intent intent = getIntent();
        int SpinnerPrevPosition  = intent.getIntExtra("i",0);
        spinner.setSelection(SpinnerPrevPosition);
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

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
        String selected = adapterView.getSelectedItem().toString();
        Integer SpinnerPosition = i;

        if(selected.equals("Heart Rate")){
            Intent intent = new Intent(DashboardActivityBP.this, DashboardActivityHR.class);
            intent.putExtra("i",SpinnerPosition);
            startActivity(intent);
        }
        else if(selected.equals("SpO2")) {
            Intent intent = new Intent(DashboardActivityBP.this, DashboardActivitySpO2.class);
            intent.putExtra("i", SpinnerPosition);
            startActivity(intent);
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }
}