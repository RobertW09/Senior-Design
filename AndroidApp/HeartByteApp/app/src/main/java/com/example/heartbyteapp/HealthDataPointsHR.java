package com.example.heartbyteapp;

public class HealthDataPointsHR {
    int time, heartRate;

    public HealthDataPointsHR(){
    }
    public HealthDataPointsHR(int time,int heartRate){
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
