package com.example.heartbyteapp;

public class HealthDataPointsDbp {
    int dbp;
    long time;

    public HealthDataPointsDbp(){
    }

    public HealthDataPointsDbp(long time, int dbp){
        this.dbp = dbp;
        this.time = time;
    }
    public long getTime(){
        return time;
    }
    public  int getDbp(){
        return dbp;
    }
}
