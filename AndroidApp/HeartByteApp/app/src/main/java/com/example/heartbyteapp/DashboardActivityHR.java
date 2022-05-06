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
import android.widget.TextView;

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
import java.util.List;

public class DashboardActivityHR extends AppCompatActivity implements AdapterView.OnItemSelectedListener, View.OnClickListener{
    private Button SettingsButton, DashboardButton, HomeButton;
    TextView Weekly_HR_Avg_Textview,Daily_HR_Avg_Textview;

    //Firebase conenction
    private FirebaseUser user;
    private String userID;
    DatabaseReference HRref, WeekAvgRef, DayAvgRef;
    Query QueryHrWeek, QueryHrDaily;
    LineChart linechart;
    LineDataSet linedataset = new LineDataSet(null,null);
    ArrayList<ILineDataSet> ilinedataset = new ArrayList<>();
    Integer WeeklyAvg, DailyAvg;
    LineData linedata;



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
        linechart = findViewById(R.id.dashbaord_hrgraph_mpchart);
        // configure chart
        linechart.getAxisRight().setEnabled(false);
        linechart.getDescription().setEnabled(false);
        linechart.getLegend().setEnabled(false);
        linedataset.setDrawCircles(false);
        linedataset.setDrawFilled(true);
        linedataset.setFillDrawable(ContextCompat.getDrawable(this, R.drawable.chart_gradient));
        linedataset.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        linedataset.setDrawValues(false);
        // configure axis
        XAxis xAxis = linechart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setDrawGridLines(false);
        // Avg data to be displayed
        Weekly_HR_Avg_Textview = (TextView) findViewById(R.id.weekly_average_hr_textview);
        Daily_HR_Avg_Textview = (TextView) findViewById(R.id.daily_average_hr_textview);

    // Spinner Set up
        Spinner spinner = (Spinner) findViewById(R.id.dashboard_data_selection_spinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,R.array.dashboard_spinner, android.R.layout.simple_spinner_dropdown_item);
        adapter.setDropDownViewResource(R.layout.mode_spinner_dropdown);
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(this);

        // Database child nodes
        user = FirebaseAuth.getInstance().getCurrentUser();
        userID = user.getUid();
        HRref = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("HeartRate").child(userID);
        // get current unix time with offset of -14400 to make it eastern
        Long CurrentUnixTime = System.currentTimeMillis()/1000 - 14400;
        Long StartUnixTime = CurrentUnixTime - 604800;
        Long StartUnixTimeD = CurrentUnixTime - 86400;
        QueryHrWeek = HRref.orderByChild("time").startAt(StartUnixTime);
        QueryHrDaily = HRref.orderByChild("time").startAt(StartUnixTimeD);
        PullData();

        //Weekly avg data


        WeeklyAvg();

        DailyAvg();
    }

    private void DailyAvg() {
        QueryHrDaily.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                List<Integer> HR = new ArrayList<Integer>();
                int totalHR = 0;
                if (snapshot.hasChildren()){
                    for (DataSnapshot mydatasnapshot : snapshot.getChildren()){
                        HealthDataPointsHR datapoint  = mydatasnapshot.getValue(HealthDataPointsHR.class);
                        HR.add(datapoint.getHeartRate());
                    }
                    for (int i = 0; i<HR.size(); i++)
                        totalHR = totalHR + HR.get(i);
                    DailyAvg = totalHR / HR.size();
                    String HrText = String.valueOf(DailyAvg);
                    Daily_HR_Avg_Textview.setText(HrText);
                }else{

                }

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });
    }

    private void WeeklyAvg() {
        QueryHrWeek.addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {

                List<Integer> HR = new ArrayList<Integer>();
                int totalHR = 0;
                if (snapshot.hasChildren()){
                    for (DataSnapshot mydatasnapshot : snapshot.getChildren()){
                        HealthDataPointsHR datapoint  = mydatasnapshot.getValue(HealthDataPointsHR.class);
                        HR.add(datapoint.getHeartRate());
                    }
                    for (int i = 0; i<HR.size(); i++)
                        totalHR = totalHR + HR.get(i);
                    WeeklyAvg = totalHR / HR.size();
                    String HrText = String.valueOf(WeeklyAvg);
                    Weekly_HR_Avg_Textview.setText(HrText);
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });
    }

    private void PullData() {
        QueryHrWeek.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                ArrayList<Entry> dataVals = new ArrayList<Entry>();
                if(snapshot.hasChildren()){
                    for(DataSnapshot mydatasnapshot : snapshot.getChildren()){
                        HealthDataPointsHR datapoint = mydatasnapshot.getValue(HealthDataPointsHR.class);
                        dataVals.add(new Entry(datapoint.getTime(),datapoint.getHeartRate()));
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