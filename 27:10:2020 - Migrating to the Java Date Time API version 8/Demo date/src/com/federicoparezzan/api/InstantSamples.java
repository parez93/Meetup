package com.federicoparezzan.api;

import java.time.*;
import java.time.temporal.ChronoUnit;

public class InstantSamples {

    public static void instantUse(){
        Instant start = Instant.now();
        // qualche calcolo
        Instant end = Instant.now();
        System.out.println(end.isAfter(start));


        LocalDate date = LocalDate.of(2020,10,1);
        LocalTime time = LocalTime.of(12,40);
        ZoneId zone = ZoneId.of("Europe/Rome");
        //ZoneId zone = ZoneId.of("US/Eastern");
        ZonedDateTime zonedDateTime = ZonedDateTime.of(date, time, zone);
        Instant instant  = zonedDateTime.toInstant();
        System.out.println(zonedDateTime); // --> time zone
        System.out.println(instant); // --> time in GMT
    }


    public static void instantManipulateSimple(){

        Instant now = Instant.now();
        System.out.println("now = " + now);

        Instant tomorrow = now.plus(1, ChronoUnit.DAYS);
        System.out.println("tomorrow = " + tomorrow);

        Instant nextHour = now.plus(1, ChronoUnit.HOURS);
        System.out.println("next hour = " + nextHour);

        //Instant goesInException = now.plus(1, ChronoUnit.MONTHS); //  --> Eccezione!
    }
}
