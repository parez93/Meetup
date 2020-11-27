import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:huawei_location/location/fused_location_provider_client.dart';
import 'package:huawei_location/location/hwlocation.dart';
import 'package:huawei_location/location/location.dart';
import 'package:huawei_location/location/location_callback.dart';
import 'package:huawei_location/location/location_request.dart';
import 'package:huawei_location/location/location_settings_request.dart';
import 'package:huawei_location/location/location_settings_states.dart';
import 'package:huawei_location/permission/permission_handler.dart';

class FusedLocation extends StatefulWidget {
  @override
  _FusedLocationState createState() => _FusedLocationState();
}

class _FusedLocationState extends State<FusedLocation> {

  String _log = "";
  final locationService = FusedLocationProviderClient();
  int _requestCode;
  int _callbackId;
  StreamSubscription<Location> _streamSubs;
  LocationCallback _locationCallback;


  LocationRequest get locationRequest {
    LocationRequest locationRequest2 = LocationRequest();
    locationRequest2.needAddress = true;
    locationRequest2.countryCode = "IT";
    locationRequest2.language = 'it';
    locationRequest2.priority = 100;
    locationRequest2.interval = 500;

    return locationRequest2;
  }


  /*
  Permette di verificare se i permessi di localizzazione sono stati dati (true/false).
   */
  Future<void> get locationPermission async {
    //### 1 Request location permissions
    PermissionHandler permissionHandler = PermissionHandler();
    try {
      bool status = await permissionHandler.requestLocationPermission();
      // true if permissions are granted; false otherwise
      log("Permessi dati? ${status.toString()}");
      setState(() {
        _log = status.toString();
      });
    } catch (e) {
      log("Error 1: " + e.toString());
    }
  }


  /*
  Permette di verificare se i requisiti di localizzazione (gps) sono attivi o meno.
   */
  Future<void> get locationSettings async {
    //FusedLocationProviderClient locationService = FusedLocationProviderClient();
    log("LocacationService data = ${locationService.toString()}");

    LocationRequest locationRequest = LocationRequest();
    LocationSettingsRequest locationSettingsRequest = LocationSettingsRequest(
      requests: <LocationRequest>[locationRequest],
      needBle: true, // BLE scanning
      alwaysShow: true, // indicates whether a location is required for the app to continue.
    );
    //### 2 obtain the location settings
    try {
      LocationSettingsStates states = await locationService.checkLocationSettings(locationSettingsRequest);
      log("Location settings = ${states.toString()}");
      log("Gps present=${states.gpsPresent}, usable=${states.gpsUsable}");
      setState(() {
        _log = states.toString();
      });
    } catch (e) {
      log("Error 2: " + e.toString());
    }
  }


  /*
  Permette di ottenere l'ultima posizione del device. Generalmente è la posizione corrente, ma non è detto!
  La response contiene i dati di localizzazione. Se nessuna location è disponibile, viene ritornato null.
   */
  Future<void> get lastKnownLocation async {
    //### 3 Obtaining the Last Known Location
    try {
      Location location = await locationService.getLastLocation();
      log("getLastLocation = ${location.toString()}");
      setState(() {
        _log = location.toString();
      });
    } catch (e) {
      log("Error 3: " + e.toString());
    }
  }


  /*
  Permette di ottenere l'ultima posizione del device con informazioni più dettagliate.
   */
  Future<void> get lastKnownLocationWithAddressInformation async {
    //### 4 Obtaining the Last Known Location with Address Information
    try {
      HWLocation hwlocation = await locationService.getLastLocationWithAddress(locationRequest);
      log("getLastLocationWithAddress = ${hwlocation.toString()}");
      setState(() {
        _log = hwlocation.toString();
      });
    } catch (e) {
      log("Error 4: " + e.toString());
    }
  }

  /*
  Permette di continuare a ottenere la localizzazione del device usando uno StreamSubscription.
   */
  Future<void> get continouslyLocation async {
    //### 5 Continuously Obtaining Device Locations

    try {
      if(_requestCode == null) {
        _requestCode = await locationService.requestLocationUpdates(locationRequest);
      }
    } catch (e) {
      log("Error 5.1: " + e.toString());
    }
  }

  Future<void> get stopContinouslyLocation async {
    try {
      if (_requestCode != null) {
        await locationService.removeLocationUpdates(_requestCode);
        log("stopContinouslyLocation canceled _requestCode=$_requestCode");
        _requestCode = null;
      } else {
        log("stopContinouslyLocation canceled _requestCode already null");
      }
    } catch (e) {
      log("Error 5.2: " + e.toString());
    }
    // stop listening to location updates
    //_streamSubs.cancel();
  }


  /*
    Permette di continuare a ottenere la localizzazione del device usando callback.

   */
  Future<void> get locationUpdatesWithCallback async {
    try {
      if(_callbackId == null) {
        _callbackId = await locationService.requestLocationUpdatesCb(locationRequest, _locationCallback);
        log("_callbackId = $_callbackId");
      }
    } catch (e) {
      log("Error 6.1: " + e.toString());
    }
  }

  Future<void> get stopLocationUpdatesWithCallback async {
    try {
      if(_callbackId != null) {
        await locationService.removeLocationUpdatesCb(_callbackId);
        log("_callbackId = $_callbackId removed");
        _callbackId == null;
      }
    } catch (e) {
      log("Error 6.2: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buttonWidget('Location permission', () => locationPermission),
          buttonWidget('Location settings', () => locationSettings),
          buttonWidget('Last known location', () => lastKnownLocation),
          buttonWidget('Last known location with address information', () => lastKnownLocationWithAddressInformation),
          buttonStartStopWidget("Continously location", () => continouslyLocation, () => stopContinouslyLocation),
          buttonStartStopWidget("Location updates with callback", () => locationUpdatesWithCallback, () => stopLocationUpdatesWithCallback),

          Container(
            height: 350,
            child: SingleChildScrollView(
              child: Text(
                _log,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonWidget(String text, Function event) {
    return Container(
      child: RaisedButton(
        onPressed: event,
        child: Text(
          text,
        ),
        color: Colors.amber,
      ),
    );
  }

  Widget buttonStartStopWidget(String text, Function event1, Function event2) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: buttonWidget("START $text", event1)),
        SizedBox(
          width: 10,
        ),
        Expanded(child: buttonWidget("STOP $text", event2)),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _initLocationUpdates();
    _initLocationCallback();
  }


  void _initLocationUpdates() {
    // listen the location update events.
    _streamSubs = locationService.onLocationData.listen((location) {
      log('update location=' + location.toString());
      setState(() {
        _log = location.toString();
      });
    });
  }


  void _initLocationCallback() {
    // ### 6 Using LocationCallback to request location updates
    _locationCallback = LocationCallback(
      onLocationResult: (locationResult) {
        log("locationCallback-onLocationResult" + locationResult.toString());
        setState(() {
          _log = 'onLocationResult: ' + locationResult.toString();
        });
      },
      onLocationAvailability: (locationAvailability) {
        log("locationCallback-onLocationAvailability" + locationAvailability.toString());
        setState(() {
          _log = 'onLocationAvailability: ' + locationAvailability.toString();
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _disposeLocationUpdates();
    _disposeLocationCallback();
    _streamSubs.cancel();
  }


  void _disposeLocationUpdates() async {
    if (_requestCode != null) {
      try {
        await locationService.removeLocationUpdates(_requestCode);
        _requestCode = null;
      } catch (e) {
        log(e.toString());
      }
    }
  }



  void _disposeLocationCallback() async {
    try {
      if(_callbackId != null) {
        await locationService.removeLocationUpdatesCb(_callbackId);
        _callbackId = null;
      }
    } catch (e) {
      log("Error 6.2: " + e.toString());
    }
  }
}
