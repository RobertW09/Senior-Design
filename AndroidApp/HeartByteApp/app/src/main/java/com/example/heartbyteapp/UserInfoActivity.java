package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class UserInfoActivity extends AppCompatActivity implements View.OnClickListener {

    // Class Variables
    private  String TempEmail,TempName,TempAge,TempWeight,TempHeight;
    private EditText Email,Name,Age,Weight,Height;
    // Firebase Connection

    private DatabaseReference AccountDetRef;
    private FirebaseUser User;
    private String UserID;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_info);

        // listen for button clicks

        Name = findViewById(R.id.userinfo_name_edittext);
        Email = findViewById(R.id.userinfo_email_edittext);
        Age = findViewById(R.id.userinfo_age_edittext);
        Height = findViewById(R.id.userinfo_height_edittext);
        Weight = findViewById(R.id.userinfo_weight_edittext);

        //call userAuth object
        User= FirebaseAuth.getInstance().getCurrentUser();
        UserID = User.getUid();
        AccountDetRef = FirebaseDatabase.getInstance().getReference("Users").child("AccountDetails");




        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);

        DisplayUserData();
    }

    private void DisplayUserData() {
        Intent Intent = getIntent();
        TempEmail = get
    }

    @Override
    public void onClick(View view) {

    }
}