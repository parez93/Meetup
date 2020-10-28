package com.federicoparezzan;

import java.time.*;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public class Comparison {

    public static void main(String[] args) {
        currentTime();
        specificTime();
        specificField();
        timeOperation();
        zoneConversion();
        timeElapsed();
    }


    private static void currentTime() {
        // Old
        Date nowOld = new Date();

        // New
        LocalDateTime nowNew = LocalDateTime.now();
    }

    private static void specificTime() {
        // Old
        Date conferenceOld = new GregorianCalendar(2020, Calendar.OCTOBER, 15).getTime();

        // New
        LocalDate conferenceNew = LocalDate.of(2020, Month.OCTOBER, 15);
    }

    private static void specificField() {
        // Old
        int monthOld = new GregorianCalendar().get(Calendar.MONTH);

        // New
        Month monthNew = LocalDateTime.now().getMonth();
    }

    private static void timeOperation() {
        // Old
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.add(Calendar.HOUR_OF_DAY, -5);
        Date fiveHoursBeforeOld = calendar.getTime();

        // New
        LocalDateTime fiveHoursBeforeNew = LocalDateTime.now().minusHours(5);
    }

    private static void zoneConversion() {
        // Old
        GregorianCalendar calendar = new GregorianCalendar();
        calendar.setTimeZone(TimeZone.getTimeZone("CET"));
        Date centralEasternOld = calendar.getTime();

        // New
        ZonedDateTime centralEasternNew = LocalDateTime.now().atZone(ZoneId.of("CET"));
    }

    private static void timeElapsed() {
        // Old
        GregorianCalendar calendar = new GregorianCalendar();
        Date nowOld = new Date();
        calendar.add(Calendar.HOUR, 1);
        Date hourLaterOld = calendar.getTime();
        long elapsed = hourLaterOld.getTime() - hourLaterOld.getTime();

        // New
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime hourLater = LocalDateTime.now().plusHours(1);
        Duration span = Duration.between(now, hourLater);
    }

}
