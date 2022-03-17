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
                CreateAccountButton();
                break;
        }
    }

    private void CreateAccountButton() {
        String Email = CreateEmail.getText().toString().trim();
        String Password = CreatePassword.getText().toString().trim();
        String FullName = Name.getText().toString().trim();
        // Fill in checks
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
        if(!Patterns.EMAIL_ADDRESS.matcher(Email).matches()) {
            CreateEmail.setError("Please provide valid email");
            CreateEmail.requestFocus();
            return;
        }
        // consider removing
        if (Password.length() < 6){
            CreatePassword.setError("Please make the password 6 characters or longer");
            CreatePassword.requestFocus();
            return;
        }
        mAuth.createUserWithEmailAndPassword("test@gamil.com","passwordAS@123")
                .addOnCompleteListener(RegisterActivity.this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()){
                            User user = new User(FullName,Email);
                            FirebaseDatabase.getInstance().getReference("Users") //creates a document called "Users"
                                    .child(FirebaseAuth.getInstance().getCurrentUser().getUid())
                                    .setValue(user).addOnCompleteListener(new OnCompleteListener<Void>() {
                                @Override
                                // responses once data is sent to firestore
                                public void onComplete(@NonNull Task<Void> task) {
                                    if (task.isSuccessful()){
                                        Toast.makeText(RegisterActivity.this, "User has been registered", Toast.LENGTH_LONG).show();
                                    }
                                    // redirect to login layout
                                    else{
                                        Toast.makeText( RegisterActivity.this, "Failed to register Try again12", Toast.LENGTH_LONG).show();
                                    }
                                }
                            });
                        } else{
                            Toast.makeText(RegisterActivity.this, "Failed to register Try again", Toast.LENGTH_LONG).show();
                        }
                    }
                });
    }
}