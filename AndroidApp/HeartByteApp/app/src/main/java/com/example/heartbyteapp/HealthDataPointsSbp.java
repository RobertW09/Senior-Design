package com.example.heartbyteapp;

public class HealthDataPointsSbp {
    int time, sbp;

    public HealthDataPointsSbp(){
    }

    public HealthDataPointsSbp(int time, int sbp){
        this.sbp = sbp;
        this.time = time;
    }
    public int getTime(){
        return time;
    }
    public int getSbp(){
        return sbp;
    }
}
