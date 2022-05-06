package com.example.heartbyteapp;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;

import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.series.DataPoint;
import com.jjoe64.graphview.series.LineGraphSeries;

public class ViewAnalyticsActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);



        // enable up button in toolbar
        ActionBar actionbar = getSupportActionBar();
        assert actionbar != null;
        actionbar.setDisplayHomeAsUpEnabled(true);

        // setup graph
        GraphView graph = (GraphView) findViewById(R.id.graph);
        LineGraphSeries<DataPoint> series = new LineGraphSeries<DataPoint>(new DataPoint[] {
                new DataPoint(0, 1),
                new DataPoint(1, 5),
                new DataPoint(2, 3),
                new DataPoint(3, 2),
                new DataPoint(4, 1),
                new DataPoint(6, 2),
                new DataPoint(8, 4),
                new DataPoint(12, 3),
                new DataPoint(32, 62),

        });
        graph.addSeries(series);

        // activate horizontal zooming and scrolling
        graph.getViewport().setScalable(true);
        graph.getViewport().setScrollable(true);

        // set axis titles
        graph.getGridLabelRenderer().setVerticalAxisTitle("BPM");
        graph.getGridLabelRenderer().setHorizontalAxisTitle("Time");

        graph.setTitle("BPM History");
        graph.setTitleTextSize(75);

        // Setup graph for showing dates
        graph.getGridLabelRenderer().setHumanRounding(false);



    }
}