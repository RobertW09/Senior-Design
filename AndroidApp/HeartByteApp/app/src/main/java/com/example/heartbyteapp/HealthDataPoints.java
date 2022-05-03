package com.example.heartbyteapp;

import java.text.SimpleDateFormat;

public class HealthDataPoints {
    int time, heartRate;
    SimpleDateFormat jdf = new SimpleDateFormat("dd hh:mm:ss");

    // Here I am assuming that the pairing that is passed is (HR,Time)
    // This is an optiont to change later down the road
    public HealthDataPoints(){
    }
    public HealthDataPoints(int time, int heartRate){
        this.heartRate = heartRate;
        this.time = time;
    }
    public int getTime(){
        return time;
    }
    public int getHeartRate(){
        return heartRate;
    }
}
