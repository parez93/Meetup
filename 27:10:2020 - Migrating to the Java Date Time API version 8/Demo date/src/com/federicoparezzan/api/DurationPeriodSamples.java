package com.federicoparezzan.api;

import java.time.*;
import java.time.temporal.ChronoUnit;

public class DurationPeriodSamples {


    public static void durationUse(){

        Duration secDuration = Duration.ofSeconds(3, 5);
        Duration hourDuration = Duration.of(1, ChronoUnit.HOURS);
        //Duration monthDuration = Duration.of(1, ChronoUnit.MONTHS); // --> eccezione
        Duration dayDuration = Duration.ofDays(1);
        System.out.println(dayDuration);

        LocalDate date = LocalDate.now();
        LocalTime time = LocalTime.now();
        LocalDateTime today = LocalDateTime.of(date, time);
        LocalDateTime yesterday = today.minusDays(1);
        Duration oneDay = Duration.between(today, yesterday);
        System.out.println(oneDay);
        // Duration oneDay = Duration.between(date, time); // --> eccezione
        Duration oneDay2 = Duration.between(time, today);
        System.out.println(oneDay2);
        // Duration oneDay3 = Duration.between(today, time); // --> eccezione
    }



    public static void periodUse(){

        // un oggetto period che rappresenta 6 mesi
        Period sixMonths = Period.ofMonths(6);
        System.out.println(sixMonths);

        LocalDate date = LocalDate.now();
        LocalDate future = date.plus(sixMonths);
        System.out.println(date);
        System.out.println(future);
    }

    public static void errorChainingMethods(){

        Period wrong = Period.ofYears(1).ofMonths(1).ofWeeks(1).ofDays(1);
        System.out.println(wrong);
        // Come scrivere:
        Period wrong2 = Period.ofYears(1);
        wrong2 = Period.ofMonths(1);
        wrong2 = Period.ofWeeks(1);
        wrong2 = Period.ofDays(1);
        System.out.println(wrong2);

        Period correct = Period.of(1,1,1);
        System.out.println(correct);
    }
}
