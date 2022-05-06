package com.example.heartbyteapp;

public class HealthDataPointsDbp {
    int time, dbp;

    public HealthDataPointsDbp(){
    }

    public HealthDataPointsDbp(int time, int dbp){
        this.dbp = dbp;
        this.time = time;
    }
    public int getTime(){
        return time;
    }
    public  int getDbp(){
        return dbp;
    }
}
