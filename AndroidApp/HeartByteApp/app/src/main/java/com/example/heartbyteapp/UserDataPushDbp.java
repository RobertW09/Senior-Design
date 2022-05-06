package com.example.heartbyteapp;

public class UserDataPushDbp {
    int dbp;
    long time;

    public UserDataPushDbp(){

    }
    public UserDataPushDbp(long time, int dbp){
        this.dbp = dbp;
        this.time = time;
    }
    public int getDbp(){
        return dbp;
    }
    public long getTime(){
        return time;
    }
}
