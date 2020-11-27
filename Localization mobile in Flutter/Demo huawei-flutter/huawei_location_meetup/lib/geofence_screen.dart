import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:huawei_location/geofence/geofence.dart';
import 'package:huawei_location/geofence/geofence_data.dart';
import 'package:huawei_location/geofence/geofence_request.dart';
import 'package:huawei_location/geofence/geofence_service.dart';
import 'package:huawei_location/permission/permission_handler.dart';

class GeofenceScreen extends StatefulWidget {
  @override
  _GeofenceScreenState createState() => _GeofenceScreenState();
}

class _GeofenceScreenState extends State<GeofenceScreen> {
  String _log = "";
  StreamSubscription<GeofenceData> _streamSubs;
  int _requestCode;
  final _service = GeofenceService();
  final geofenceList = <Geofence>[
    Geofence(
      uniqueId: 'geofence1',
      conversions: Geofence.ENTER_GEOFENCE_CONVERSION | Geofence.DWELL_GEOFENCE_CONVERSION,
      validDuration: 2000000,
      latitude: 27.117624,
      longitude: 28.11762,
      radius: 60,
      notificationInterval: 100,
      dwellDelayTime: 10000,
    ),
    Geofence(
      uniqueId: 'geofence2',
      conversions: Geofence.ENTER_GEOFENCE_CONVERSION | Geofence.DWELL_GEOFENCE_CONVERSION,
      validDuration: 2000000,
      latitude: 51.117624,
      longitude: 48.028800,
      radius: 60,
      notificationInterval: 100,
      dwellDelayTime: 10000,
    ),
  ];
  final PermissionHandler _permissionHandler = PermissionHandler();


  Future<bool> _hasPermission() async {
    try {
      final bool status = await _permissionHandler.hasBackgroundLocationPermission();
      log("_hasPermission=$status");
      return status;
    } catch (e) {
      log(e.toString());
    }
  }

  void _requestPermission() async {
    try {
      final bool status = await _permissionHandler.requestBackgroundLocationPermission();
      log("_requestPermission=$status");
    } catch (e) {
      log(e.toString());
    }
  }

  void _geofenceList() async {
    GeofenceRequest geofenceRequest = GeofenceRequest(
      geofenceList: geofenceList,
      initConversions: GeofenceRequest.ENTER_INIT_CONVERSION | GeofenceRequest.DWELL_INIT_CONVERSION,
      coordinateType: GeofenceRequest.COORDINATE_TYPE_WGS_84,
    );

    _hasPermission().then((value) {
      if(!value) {
        _requestPermission();
      }
    });

    try {
      if (_requestCode == null) {
        _requestCode = await _service.createGeofenceList(geofenceRequest);
      }
    } catch (e) {
      log(e.toString());
    }
  }


  void _deleteGeofenceList() async {
    if (_requestCode != null) {
      try {
        await _service.deleteGeofenceList(_requestCode);
        _requestCode = null;
      } catch (e) {
        log(e.toString());
      }
    }
  }


  void _deleteGeofenceListWithIds() async {
    try {
      await _service.deleteGeofenceListWithIds(<String>['geofence1', 'geofence2']);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        RaisedButton(
          onPressed: _geofenceList,
          child: Text("Start geofence list"),
        ),
        RaisedButton(
          onPressed: _deleteGeofenceList,
          child: Text("Stop geofence list"),
        ),
        RaisedButton(
          onPressed: _deleteGeofenceListWithIds,
          child: Text("Stop Geofence list with ids"),
        ),
        Text(_log),
      ]),
    );


  }


  @override
  void initState() {
    super.initState();
    _streamSubs = _service.onGeofenceData.listen((data) {
      log(data.toString());
      setState(() {
        _log = data.toString();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _disposeGeofenceList();
    _streamSubs.cancel();
  }

  void _disposeGeofenceList() async {
    if (_requestCode != null) {
      try {
        await _service.deleteGeofenceList(_requestCode);
        _requestCode = null;
      } catch (e) {
        log(e.toString());
      }
    }
  }
}
