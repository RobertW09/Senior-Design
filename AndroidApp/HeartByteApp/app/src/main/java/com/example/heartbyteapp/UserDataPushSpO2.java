package com.example.heartbyteapp;

public class UserDataPushSpO2 {
    int spo2;
    Long x_Time;

    public UserDataPushSpO2(Long x_Time,int spo2){
        this.spo2 = spo2;
        this.x_Time = x_Time;
    }
    public int getSpo2(){
        return spo2;
    }
    public long getTime(){
        return x_Time;
    }
}
