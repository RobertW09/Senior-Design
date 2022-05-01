package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.Set;

public class    UserInfoActivity extends AppCompatActivity implements View.OnClickListener {

    // Class Variables
    private  String TempEmail,TempName,TempAge,TempWeight,TempHeight;
    private EditText Email,Name,Age,Weight,Height;
    private Button UpDateUserButton, SettingsButton, HomeButton,DashboardButton;
    // Firebase Connection

    private DatabaseReference AccountDetRef;
    private FirebaseUser user;
    private String UserID;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_info);

        // listen for button clicks

        Name = (EditText) findViewById(R.id.userinfo_name_edittext);
        Name.setOnClickListener(this);
        Email = (EditText) findViewById(R.id.userinfo_email_edittext);
        Email.setOnClickListener(this);
        //Age = (EditText) findViewById(R.id.userinfo_age_edittext);
        //Age.setOnClickListener(this);
        //Height = (EditText) findViewById(R.id.userinfo_height_edittext);
        //Height.setOnClickListener(this);
        //Weight = (EditText) findViewById(R.id.userinfo_weight_edittext);
        //Weight.setOnClickListener(this);
        UpDateUserButton = (Button) findViewById(R.id.userinfo_update_button);
        UpDateUserButton.setOnClickListener(this);
        // Bottom nav Buttons
        HomeButton = (Button) findViewById(R.id.home_button);
        HomeButton.setOnClickListener(this);
        DashboardButton =(Button) findViewById(R.id.dashboard_button);
        DashboardButton.setOnClickListener(this);
        SettingsButton =(Button) findViewById(R.id.settings_button);
        SettingsButton.setOnClickListener(this);
        //call userAuth object
        user= FirebaseAuth.getInstance().getCurrentUser();
        UserID = user.getUid();
        AccountDetRef = FirebaseDatabase.getInstance().getReference("Users").child("AccountDetails");




        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);

        DisplayUserData();
    }

    private void DisplayUserData() {
         EditText userinfo_name_edittext = (EditText) findViewById(R.id.userinfo_name_edittext);
         EditText userinfo_email_edittext = (EditText) findViewById(R.id.userinfo_email_edittext);
       AccountDetRef.child(UserID).addListenerForSingleValueEvent(new ValueEventListener() {
           @Override
           public void onDataChange(@NonNull DataSnapshot snapshot) {
               User userprofile = snapshot.getValue(User.class);
               if (userprofile != null){
                   String name = userprofile.fullname;
                   String email = userprofile.email;
                   //Integer Age = userprofile.age;
                   userinfo_name_edittext.setText(name);
                   userinfo_email_edittext.setText(email);
               }
           }

           @Override
           public void onCancelled(@NonNull DatabaseError error) {

           }
       });
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
        }
    }
}