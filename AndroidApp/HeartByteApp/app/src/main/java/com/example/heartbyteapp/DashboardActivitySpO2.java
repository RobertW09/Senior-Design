package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.Query;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;

public class DashboardActivitySpO2 extends AppCompatActivity implements AdapterView.OnItemSelectedListener, View.OnClickListener{
    private Button SettingsButton, DashboardButton, HomeButton;
    //Firebase conenction
    private FirebaseUser user;
    private String userID;
    DatabaseReference SpO2ref;
    Query QueryHrWeek;
    LineChart linechart;
    LineDataSet linedataset = new LineDataSet(null,null);
    ArrayList<ILineDataSet> ilinedataset = new ArrayList<>();
    LineData linedata;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard_sp_o2);

        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);
        linechart = findViewById(R.id.dashbaord_spo2graph_mpchart);
        //configure chart
        linechart.getAxisRight().setEnabled(false);
        linechart.getDescription().setEnabled(false);
        linechart.getLegend().setEnabled(false);
        linedataset.setDrawCircles(false);
        linedataset.setDrawFilled(true);
        linedataset.setFillDrawable(ContextCompat.getDrawable(this, R.drawable.chart_gradient));
        linedataset.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        linedataset.setDrawValues(false);
        //configure axis
        XAxis xAxis = linechart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setDrawGridLines(false);

        // Spinner set up
        Spinner spinner = (Spinner) findViewById(R.id.dashboard_data_selection_spinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,R.array.dashboard_spinner, android.R.layout.simple_spinner_dropdown_item);
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(this);

        // Database child nodes
        user = FirebaseAuth.getInstance().getCurrentUser();
        userID = user.getUid();
        SpO2ref = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("SpO2").child(userID);
        // get current unix time with ofset of -14400 to make it eastern
        Long CurrentUnixTime = System.currentTimeMillis()/1000 - 14400;
        Long StartUnixTime = CurrentUnixTime - 604800;
        QueryHrWeek = SpO2ref.orderByChild("time").startAt(StartUnixTime);
        PullData();



        // retrieve previous spinner position
        Intent intent = getIntent();
        int SpinnerPrevPosition  = intent.getIntExtra("i",0);
        spinner.setSelection(SpinnerPrevPosition);
    }

    private void PullData() {
        QueryHrWeek.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                ArrayList<Entry> dataVals = new ArrayList<Entry>();
                if(snapshot.hasChildren()){
                    for(DataSnapshot mydatasnapshot : snapshot.getChildren()){
                        HealthDataPointsSpO2 datapoint = mydatasnapshot.getValue(HealthDataPointsSpO2.class);
                        dataVals.add(new Entry(datapoint.getTime(),datapoint.getSpo2()));
                    }
                    DisplayChart(dataVals);
                }
                else {
                    linechart.clear();
                    linechart.invalidate();
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });
    }

    private void DisplayChart(ArrayList<Entry> dataVals) {
        linedataset.setValues(dataVals);
        ilinedataset.clear();
        ilinedataset.add(linedataset);
        linedata = new LineData(ilinedataset);
        linechart.clear();
        linechart.setData(linedata);
        linechart.invalidate();
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
            Intent intent = new Intent(DashboardActivitySpO2.this, DashboardActivityHR.class);
            intent.putExtra("i",SpinnerPosition);
            startActivity(intent);
        }
        else if (selected.equals("Blood Pressure")){
            Intent intent = new Intent(DashboardActivitySpO2.this, DashboardActivityBP.class);
            intent.putExtra("i",SpinnerPosition);
            startActivity(intent);
        }

    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }
}