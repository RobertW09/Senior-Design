package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DatabaseReference;

public class FamilyActivity extends AppCompatActivity implements View.OnClickListener {


    //firebase
    private FirebaseAuth mAuth;
    DatabaseReference dbRef;

    //buttons
    private Button AddContact;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_family);

        //listen for button presses
        AddContact = (Button) findViewById(R.id.add_contact_edittext);
        AddContact.setOnClickListener(this);

        // Setup Toolbar
        Toolbar toolbar = (Toolbar)findViewById(R.id.main_toolbar);
        setSupportActionBar(toolbar);

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.add_contact_edittext:
                startActivity(new Intent(this, AddContactsActivity.class));
                break;
        }
    }
}