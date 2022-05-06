package com.example.heartbyteapp;

public class UserDataPushSBP {
    float SBP;
    Long x_Time;

    public UserDataPushSBP(){

    }

    public UserDataPushSBP(Long x_Time,float SBP){
        this.SBP = SBP;
        this.x_Time = x_Time;
    }
    public float getSpo2(){
        return SBP;
    }
    public long getTime(){
        return x_Time;
    }
}
