package com.example.heartbyteapp;

public class HealthDataPointsSbp {
    int sbp;
    long time;

    public HealthDataPointsSbp(){
    }

    public HealthDataPointsSbp(long time, int sbp){
        this.sbp = sbp;
        this.time = time;
    }
    public long getTime(){
        return time;
    }
    public int getSbp(){
        return sbp;
    }
}
