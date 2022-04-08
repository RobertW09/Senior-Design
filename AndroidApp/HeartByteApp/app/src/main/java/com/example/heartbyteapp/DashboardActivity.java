package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.google.firebase.Timestamp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ServerValue;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.database.core.Tag;
import com.jjoe64.graphview.DefaultLabelFormatter;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.series.DataPoint;
import com.jjoe64.graphview.series.LineGraphSeries;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class DashboardActivity extends AppCompatActivity implements View.OnClickListener {

    private Button SettingsButton;
    private Button HomeButton;
    private Button DashboardButton;
    private FirebaseAuth mAuth;
    private FirebaseUser user;
    private String userID;

    //temp
    private Button SubmitButton;
    private EditText HRData;
    private EditText SpO2;

    //graph
    SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
    GraphView graphView;
    LineGraphSeries series;


    // initialize FirebaseAuth Instance
    DatabaseReference DbRef;
    DatabaseReference ChartRef;
    DatabaseReference SpO2Ref;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);

        SettingsButton = (Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton = (Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);

        //temp
        SubmitButton = (Button) findViewById(R.id.user_sub_button);
        SubmitButton.setOnClickListener(this);
        HRData = (EditText) findViewById(R.id.heart_rate_edittext);
        SpO2 = (EditText) findViewById(R.id.SpO2_edittext);


        //graph child nodes set up
        user = FirebaseAuth.getInstance().getCurrentUser();
        userID = user.getUid(); // refrence current user and gets unique ID
        ChartRef = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("HeartRate");
        SpO2Ref = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("SpO2");

        //graph
        graphView = (GraphView) findViewById(R.id.graph);
        series = new LineGraphSeries();
        graphView.addSeries(series);
        //adjust the graph
        // set axis titles
        graphView.getGridLabelRenderer().setVerticalAxisTitle("HR");
        graphView.getGridLabelRenderer().setHorizontalAxisTitle("Time");
        graphView.setTitle("HR History");
        graphView.setTitleTextSize(45);

        graphView.getGridLabelRenderer().setNumHorizontalLabels(4);

        graphView.getGridLabelRenderer().setLabelFormatter(new DefaultLabelFormatter(){
            @Override
            public String formatLabel(double value, boolean isValueX) {
                if(isValueX){
                    return sdf.format(new Date((long) value));
                }
                else{
                    return super.formatLabel(value, isValueX);
                }
            }
        });


    }

    @Override
    protected void onStart() {
        super.onStart();
        ChartRef.child(userID).addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                ChartDataPoints data = snapshot.getValue(ChartDataPoints.class);

                if(data != null){
                    Toast.makeText(DashboardActivity.this,"we goods", Toast.LENGTH_LONG).show();

                }

                DataPoint[] dp = new DataPoint[(int) snapshot.getChildrenCount()];
                int index = 0;

                for (DataSnapshot myDataSnapshot : snapshot.getChildren()){
                    ChartDataPoints pointValue = myDataSnapshot.getValue(ChartDataPoints.class);

                    dp[index] = new DataPoint(pointValue.getTime(),pointValue.getHR());
                     index++;
                }
                series.resetData(dp);
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {
                Toast.makeText(DashboardActivity.this, "error", Toast.LENGTH_LONG).show();
            }
        });
    }

    //change activities
    @Override
    public void onClick(View view) {
        DbRef = FirebaseDatabase.getInstance().getReference("Users").child("PPG_Data").child("HeartRate");


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
            case R.id.user_sub_button:
                PushData();
                break;

        }
    }

    //push data to realtime database
    private void PushData() {
        String HeartRate_string = HRData.getText().toString().trim();
        int y_heartrate = Integer.parseInt(HeartRate_string);
        String SpO2_string = SpO2.getText().toString().trim();
        int spo2 = Integer.parseInt(SpO2_string);
        // checks
        // if empty
        if (HeartRate_string.isEmpty()){
            HRData.setError("Please enter a Heart Rate Value");
            HRData.requestFocus();
            return;
        }
        if (SpO2_string.isEmpty()){
            SpO2.setError("Please enter a Heart Rate Value");
            SpO2.requestFocus();
            return;
        }
        //unix time
        Long x_time = System.currentTimeMillis()/1000;

        UserDataPush userdatapush = new UserDataPush(x_time,y_heartrate);
        DbRef.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userdatapush);
        Toast.makeText(DashboardActivity.this, "Data has been pushed", Toast.LENGTH_LONG).show();
        //spo2
        UserDataPushSpO2 userDataPushSpO2 = new UserDataPushSpO2(x_time,spo2);
        SpO2Ref.child(FirebaseAuth.getInstance().getCurrentUser().getUid()).push().setValue(userDataPushSpO2);
        Toast.makeText(DashboardActivity.this, "Data has been pushed", Toast.LENGTH_LONG).show();

        
    }
}