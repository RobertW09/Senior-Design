package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.google.firebase.auth.FirebaseAuth;

import java.util.jar.Attributes;

public class RegisterActivity extends AppCompatActivity implements View.OnClickListener{
    private TextView SignInReturn;
    private FirebaseAuth mAuth;
    // private var for user defined information
    private EditText Name, CreateEmail, CreatePassword;
    private Button CreateAccountButton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        mAuth = FirebaseAuth.getInstance();

        CreateAccountButton = (Button) findViewById(R.id.CreateAccountButton);
        CreateAccountButton.setOnClickListener(this);
        SignInReturn = (TextView) findViewById(R.id.SignInReturn);
        SignInReturn.setOnClickListener(this);

        // user information
        Name = (EditText)  findViewById(R.id.Name);
        CreateEmail = (EditText)  findViewById(R.id.CreateEmail);
        CreatePassword = (EditText)  findViewById(R.id.CreatePassword);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.SignInReturn: // returns back to main login activity
                startActivity(new Intent( this, LoginActivity.class ));
                break;
            case R.id.CreateAccountButton:
                CreateAccountButton();
                break;
        }
    }

    private void CreateAccountButton() {
        String Email = CreateEmail.getText().toString().trim();
        String Password = CreatePassword.getText().toString().trim();
        String FullName = Name.getText().toString().trim();

        if (FullName.isEmpty()) {
            Name.setError("Full name is needed");
            Name.requestFocus();
            return;
        }
        if (Email.isEmpty()) {
            CreateEmail.setError("Enter your Email");
            CreateEmail.requestFocus();
            return;
        }
        if (Password.isEmpty()){
            CreatePassword.setError("Enter a Password");
            CreatePassword.requestFocus();
            return;
        }
    }
}