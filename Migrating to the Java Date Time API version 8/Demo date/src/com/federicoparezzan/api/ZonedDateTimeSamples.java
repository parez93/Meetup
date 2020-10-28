package com.federicoparezzan.api;

import java.time.*;

public class ZonedDateTimeSamples {

    public static void zonedDateTimeUse(){
        LocalDate date = LocalDate.of(2020,10,1);
        LocalTime time = LocalTime.of(12,40);
        ZoneId zone = ZoneId.of("Europe/Rome"); // --> se non esiste eccezione!
        //ZoneId zone = ZoneId.of("US/Eastern");
        ZonedDateTime zonedDateTime = ZonedDateTime.of(date, time, zone);
        System.out.println(zonedDateTime);
    }


    public static void availableTimeZone(){
        ZoneId.getAvailableZoneIds().stream()
                .filter(z -> z.contains("Europe") || z.contains("Rome"))
                .forEach(System.out::println); // --> time zone disponibili
    }

    public static void currentTimeZone(){
        ZoneId zone = ZoneId.systemDefault(); // --> my time zone
        System.out.println(zone);

    }


    public static void daylightSavingSpring(){
        LocalDate date = LocalDate.of(2020,Month.MARCH,29);
        LocalTime time = LocalTime.of(1,30);
        ZoneId zone = ZoneId.of("Europe/Rome");
        //ZoneId zone = ZoneId.of("US/Eastern");
        ZonedDateTime zonedDateTime = ZonedDateTime.of(date, time, zone);
        System.out.println(zonedDateTime);

        zonedDateTime = zonedDateTime.plusHours(1);
        System.out.println(zonedDateTime);
    }

    public static void daylightSavingAutumn(){
        LocalDate date = LocalDate.of(2020, Month.OCTOBER,25);
        LocalTime time = LocalTime.of(2,30);
        ZoneId zone = ZoneId.of("Europe/Rome");
        //ZoneId zone = ZoneId.of("US/Eastern");
        ZonedDateTime zonedDateTime = ZonedDateTime.of(date, time, zone);
        System.out.println(zonedDateTime);

        zonedDateTime = zonedDateTime.plusHours(1);
        System.out.println(zonedDateTime);

    }

}
