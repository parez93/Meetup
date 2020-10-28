package com.federicoparezzan.api;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Month;

public class LocalTimeSamples {

    public static void localTimeUse(){
        LocalTime time = LocalTime.of(18, 30);
        int hour = time.getHour();
        int minute = time.getMinute();

        System.out.println("time = " + time);
        System.out.println("hour = " + hour);
        System.out.println("minute = " + minute);
    }


    public static void localTimeManipulateSimple(){
        LocalTime time = LocalTime.of(18, 30);

        time = time.withSecond(6);
        System.out.println("time = " + time);

        time = time.plusMinutes(3);
        System.out.println("time = " + time);

        time = time.minusHours(1);
        System.out.println("time = " + time);
    }

}
