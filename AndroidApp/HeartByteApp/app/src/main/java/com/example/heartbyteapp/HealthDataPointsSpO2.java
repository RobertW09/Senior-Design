package com.example.heartbyteapp;

public class HealthDataPointsSpO2 {
    int time, spo2;

    public HealthDataPointsSpO2(){
    }
    public HealthDataPointsSpO2(int time, int spo2){
        this.spo2 = spo2;
        this.time = time;
    }
    public int getTime(){
        return time;
    }
    public int getSpo2(){
        return spo2;
    }
}
