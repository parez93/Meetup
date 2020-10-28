package com.federicoparezzan.api;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Month;

public class LocalDateTimeSamples {

    public static void localDateTimeUse(){
        LocalDateTime dt1 = LocalDateTime.of(2020, Month.OCTOBER, 1, 12, 40);
        System.out.println(dt1);

        LocalDate date = LocalDate.of(2020,10,1);
        LocalTime time = LocalTime.of(12,40);
        LocalDateTime dt2 = LocalDateTime.of(date, time);
        System.out.println(dt2);

        LocalDate date2 = LocalDate.of(2020,10,1);
        LocalDateTime dt3 = date2.atTime(12, 40);
        System.out.println(dt3);

        LocalDateTime dt4 = date.atTime(time);
        System.out.println(dt4);
    }


    public static void localDateTimeEquality(){
        LocalDateTime dt1 = LocalDateTime.of(2020,12,1, 12,12);
        LocalDateTime dt2 = LocalDateTime.of(2020,12,1, 12,12);
        LocalDateTime dt3 = dt1;

        System.out.println("dt1==dt2 ? " + (dt1==dt2));
        System.out.println("dt1==dt3 ? " + (dt1==dt3));
        System.out.println("dt1.equals(dt2) ? " + (dt1.equals(dt2)));
    }

}
