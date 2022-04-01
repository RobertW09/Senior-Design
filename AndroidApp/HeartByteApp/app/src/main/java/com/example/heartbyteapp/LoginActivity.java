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
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class LoginActivity extends AppCompatActivity implements View.OnClickListener {
    // Var set up
    private TextView register, ForgotPassword;
    private EditText Email, Password;
    private Button SignIn;

    private FirebaseAuth mAuth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        // register
        register = (TextView) findViewById(R.id.register_text);
        register.setOnClickListener(this);
        // Sign IN Button
        SignIn = (Button) findViewById(R.id.login_button);
        SignIn.setOnClickListener(this);
        // Initialize Login Email, Password
        Email = (EditText) findViewById(R.id.email_login_text);
        Password = (EditText) findViewById(R.id.PasswordLogin);
        // forgotpassword
        ForgotPassword = (TextView) findViewById(R.id.ForgotPassword);
        ForgotPassword.setOnClickListener(this);
        // Initialize Firebase Instance
        mAuth = FirebaseAuth.getInstance();



    }
    // send to the MainActivity (No longer in service)
     //public void login(View view) {
       // Intent intent = new Intent(this, MainActivity.class);
        //startActivity(intent);
    //}

    @Override
    // cases to switch into various different activities
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.register_text:
                startActivity(new Intent( this, RegisterActivity.class ));
                break;
                // login in verification with firebase connection
            case R.id.login_button:
                UserLogin();
                //startActivity(new Intent(this,MainActivity.class));
                break;

            case R.id.ForgotPassword:
                startActivity(new Intent(this, ForgotPasswordActivity.class));
                break;

        }

    }

    private void UserLogin() {
        String email = Email.getText().toString().trim();
        String password = Password.getText().toString().trim();

        // User checks
        if(email.isEmpty()){
            Email.setError("Enter your email");
            Email.requestFocus();
            return;
        }
        if(password.isEmpty()){
            Password.setError("Enter you password");
            Password.requestFocus();
            return;
        }
        if(!Patterns.EMAIL_ADDRESS.matcher(email).matches()){
            Email.setError("Enter a valid email address");
            Email.requestFocus();
            return;
        }
        if(password.length() < 6){
            Password.setError("Passwords must be longer than 6 characters");
            Password.requestFocus();
            return;
        }
        mAuth.signInWithEmailAndPassword(email,password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if(task.isSuccessful()){
                    //Check for user email verification
                    FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
                    if(user.isEmailVerified()){
                        //Directs to user profile
                        startActivity(new Intent(LoginActivity.this, MainActivity.class));
                    }else{
                        // sends email for verification
                        user.sendEmailVerification();
                        Toast.makeText(LoginActivity.this, "Please verify your email", Toast.LENGTH_LONG).show();
                    }
                }else{
                    Toast.makeText(LoginActivity.this, "Failed to login, please try again", Toast.LENGTH_LONG).show();
                }
            }
        });
    }
}