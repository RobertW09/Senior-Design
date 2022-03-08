package com.example.heartbyteapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class RegisterActivity extends AppCompatActivity implements View.OnClickListener{
    private TextView SignInReturn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        SignInReturn = (TextView) findViewById(R.id.SignInReturn);
        SignInReturn.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.SignInReturn:
                startActivity(new Intent( this, LoginActivity.class ));
                break;
        }
    }
}