package com.example.heartbyteapp;

import java.util.Date;

public class UserDataPush {
    int y_HeartRate;
    Long x_Time;


    public UserDataPush(){

    }
    public UserDataPush(Long x_Time,int y_HeartRate){
        this.y_HeartRate = y_HeartRate;
        this.x_Time = x_Time;
        // add more if need be

    }
    public int getHeartRate(){
        return y_HeartRate;
    }

    public long getTime(){
        return x_Time;
    }

}
