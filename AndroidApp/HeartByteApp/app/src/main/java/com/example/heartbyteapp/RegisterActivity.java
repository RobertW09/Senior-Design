package com.example.heartbyteapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
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
import com.google.firebase.database.FirebaseDatabase;

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
        // initialize FirebaseAuth Instance
        mAuth = FirebaseAuth.getInstance();
        // user interactive buttons
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
                CreateUser();
                break;
        }
    }

    private void CreateUser() {
        String Email = CreateEmail.getText().toString().trim();
        String Password = CreatePassword.getText().toString().trim();
        String FullName = Name.getText().toString().trim();

        // checks
        if (FullName.isEmpty()){
            Name.setError("Please enter a name");
            Name.requestFocus();
            return;
        }
        if (Password.isEmpty()){
            CreatePassword.setError("Please enter a password");
            CreatePassword.requestFocus();
            return;
        }
        if (Email.isEmpty()){
            CreateEmail.setError("Please enter a email");
            CreateEmail.requestFocus();
            return;
        }
        if (Password.length() < 6 ){
            CreatePassword.setError("Password must be larger than 6 characters");
            CreatePassword.requestFocus();
            return;
        }
        if(!Patterns.EMAIL_ADDRESS.matcher(Email).matches()) {
            CreateEmail.setError("Please provide valid email");
            CreateEmail.requestFocus();
            return;
        }
        // Task is an API that represents asynchronous method call
        mAuth.createUserWithEmailAndPassword(Email,Password).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if (task.isSuccessful()){
                    User user = new User(FullName,Email);
                    FirebaseDatabase.getInstance().getReference("Users").child("AccountDetails")
                            .child(FirebaseAuth.getInstance().getCurrentUser().getUid())
                            .setValue(user).addOnCompleteListener(new OnCompleteListener<Void>() {
                        @Override
                        public void onComplete(@NonNull Task<Void> task) {
                            if (task.isSuccessful()){
                                Toast.makeText( RegisterActivity.this, "User has been registered", Toast.LENGTH_LONG).show();
                                // Direct User back to LoginActivity
                                startActivity(new Intent(RegisterActivity.this, LoginActivity.class));
                            }else{
                                Toast.makeText(RegisterActivity.this, "Failed to register", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });
                } else{
                    Toast.makeText(RegisterActivity.this, "Failed to register", Toast.LENGTH_SHORT).show();
                }

            }
        });
    }
}