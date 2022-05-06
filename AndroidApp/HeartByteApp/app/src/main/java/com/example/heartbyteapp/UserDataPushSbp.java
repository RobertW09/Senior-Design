package com.example.heartbyteapp;

public class UserDataPushSbp {
    int sbp;
    long time;

    public UserDataPushSbp(){
    }
    public UserDataPushSbp(long time, int sbp){
        this.sbp = sbp;
        this.time = time;
    }
    public int getSbp(){
        return sbp;
    }
    public long getTime(){
        return time;
    }
}
