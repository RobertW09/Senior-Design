package com.example.heartbyteapp;
// This class can be erased

public class ChartDataPoints{
    public int heartRate;
    public long time;

    public ChartDataPoints(){

    }


    public ChartDataPoints(long time,int heartRate){
        this.heartRate = heartRate;
        this.time = time;

    }
    public int getHR(){
        return heartRate;
    }
    public  long getTime(){
        return time;
    }




}
