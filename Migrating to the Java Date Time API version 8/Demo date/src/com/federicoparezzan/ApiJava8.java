package com.federicoparezzan;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static com.federicoparezzan.api.DurationPeriodSamples.*;
import static com.federicoparezzan.api.InstantSamples.*;
import static com.federicoparezzan.api.LocalDateSamples.*;
import static com.federicoparezzan.api.LocalDateTimeSamples.*;
import static com.federicoparezzan.api.LocalTimeSamples.*;
import static com.federicoparezzan.api.ZonedDateTimeSamples.*;

public class ApiJava8 {

    public static void main(String[] args) {

        localDateUse();
        localDateManipulateSimple();
        localDateManipulateComplex();

        localTimeUse();
        localTimeManipulateSimple();

        localDateTimeUse();
        localDateTimeEquality();

        zonedDateTimeUse();
        availableTimeZone();
        currentTimeZone();
        daylightSavingSpring();
        daylightSavingAutumn();

        instantUse();
        instantManipulateSimple();

        durationUse();
        periodUse();
        errorChainingMethods();


    }




}
