package com.federicoparezzan.api;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;

import static java.time.DayOfWeek.WEDNESDAY;
import static java.time.temporal.TemporalAdjusters.lastDayOfMonth;
import static java.time.temporal.TemporalAdjusters.nextOrSame;

public class LocalDateSamples {

    public static void localDateUse(){
        LocalDate date = LocalDate.of(2020, Month.OCTOBER, 27); //Calendario ISO-8601 --> Cal. Gregoriano
        int year = date.getYear();
        Month month = date.getMonth();
        int dom = date.getDayOfMonth();
        DayOfWeek dow = date.getDayOfWeek();
        int len = date.lengthOfMonth();
        boolean leap = date.isLeapYear();

        System.out.println("year=" + year);
        System.out.println("month=" + month);
        System.out.println("DayOfMonth=" + dom);
        System.out.println("DayOfWeek=" + dow);
        System.out.println("lengthOfMonth=" + len);
        System.out.println("isLeapYear=" + leap);
    }


    public static void localDateManipulateSimple(){
        LocalDate date = LocalDate.of(2020, Month.OCTOBER, 27);
        System.out.println("date = " + date);

        LocalDate date2 = date.withYear(2019);
        System.out.println("date2 = " + date2);

        date2 = date.plusMonths(1);
        System.out.println("date2 plus 1 month = " + date2);

        date2 = date.minusDays(5);
        System.out.println("date2 minus 5 days = " + date2);

        date2 = date.plusMonths(1).minusDays(5);
        System.out.println("date2 plus 1 month, minus 5 days = " + date2);
    }


    public static void localDateManipulateComplex(){
        // java.time.temporal.TemporalAdjusters: utility class with static methods in order to manipulate dates
        LocalDate date = LocalDate.of(2020, Month.OCTOBER, 29);
        System.out.println("date = " + date);

        date = date.with(lastDayOfMonth());
        System.out.println("date = " + date);

        date = date.with(nextOrSame(WEDNESDAY));
        System.out.println("date = " + date);
    }

}
