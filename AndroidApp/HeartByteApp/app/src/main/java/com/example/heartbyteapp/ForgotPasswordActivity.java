package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;

public class ForgotPasswordActivity extends AppCompatActivity implements View.OnClickListener{
    private Button ResetPassword;
    private TextView SignInReturn;
    private EditText Email;
    private FirebaseAuth mAuth;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_forgot_password);

        // Initialize Firebase Instance
        mAuth = FirebaseAuth.getInstance();
        //user interactive buttons
        ResetPassword = (Button) findViewById(R.id.ResetPasswordButton);
        ResetPassword.setOnClickListener(this);
        SignInReturn = (TextView) findViewById(R.id.SignInReturn);
        SignInReturn.setOnClickListener(this);
        // user information
        Email = (EditText) findViewById(R.id.ResetEmail);
    }
    // cases to switch into various different activities
    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.SignInReturn:
                startActivity(new Intent(this, LoginActivity.class));
                break;
            case R.id.ResetPasswordButton:
                resetpassword();
                break;
                
        }

    }

    private void resetpassword() {
        String email = Email.getText().toString().trim();

        //user checks
        if(email.isEmpty()){
            Email.setError("Enter your email");
            Email.requestFocus();
            return;
        }
        if(!Patterns.EMAIL_ADDRESS.matcher(email).matches()){
            Email.setError("Please provide valid email");
            Email.requestFocus();
            return;
        }
        mAuth.sendPasswordResetEmail(email).addOnCompleteListener(new OnCompleteListener<Void>() {
            @Override
            public void onComplete(@NonNull Task<Void> task) {
                if(task.isSuccessful()){
                    Toast.makeText(ForgotPasswordActivity.this, "Email with resent link was sent", Toast.LENGTH_LONG).show();
                }else{
                    Toast.makeText(ForgotPasswordActivity.this, "Try again", Toast.LENGTH_LONG).show();
                }
            }
        });
    }
}