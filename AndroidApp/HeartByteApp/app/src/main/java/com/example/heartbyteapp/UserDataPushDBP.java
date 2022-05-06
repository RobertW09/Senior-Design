package com.example.heartbyteapp;

public class UserDataPushDBP {
    float DBP;
    Long x_Time;

    public UserDataPushDBP(){

    }

    public UserDataPushDBP(Long x_Time,float DBP){
        this.DBP = DBP;
        this.x_Time = x_Time;
    }
    public float getSpo2(){
        return DBP;
    }
    public long getTime(){
        return x_Time;
    }
}
