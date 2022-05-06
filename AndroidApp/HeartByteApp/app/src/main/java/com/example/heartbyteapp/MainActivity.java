package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextClock;
import android.widget.TextView;
import android.widget.Toast;


import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.ml.modeldownloader.CustomModel;
import com.google.firebase.ml.modeldownloader.CustomModelDownloadConditions;
import com.google.firebase.ml.modeldownloader.DownloadType;
import com.google.firebase.ml.modeldownloader.FirebaseModelDownloader;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener, View.OnClickListener {

//    public static final String EXTRA_MESSAGE = "com.example.heartbyteapp.MESSAGE";
    private FirebaseUser user;
    private DatabaseReference refrence;

    private String userID;
    private Button SettingsButton;
    private Button HomeButton;
    private Button DashboardButton;
    private Button TestButton;

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

        TestButton =(Button) findViewById(R.id.test_button);
        TestButton.setOnClickListener(this);




        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
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

                if(userprofile != null){
                    String name = userprofile.fullname;
                    String[] firstname = name.split(" ");
                    user_name_textview.setText("Hello, "+ firstname[0] + "!");
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {
                Toast.makeText(MainActivity.this , "Error", Toast.LENGTH_SHORT).show();
            }
        });
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

    // switch activities
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
            case R.id.test_button:
                startActivity((new Intent(this,DashboardActivity.class)));
                break;
        }
    }

    public void gotoBLE(View view){
        Intent intent = new Intent(this, ble.class);
        startActivity(intent);
    }
    

}