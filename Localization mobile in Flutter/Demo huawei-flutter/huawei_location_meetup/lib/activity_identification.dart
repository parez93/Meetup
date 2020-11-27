import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:huawei_location/activity/activity_conversion_response.dart';
import 'package:huawei_location/activity/activity_identification_response.dart';
import 'package:huawei_location/activity/activity_identification_service.dart';
import 'package:huawei_location/permission/permission_handler.dart';

import 'activities.dart';

class ActivityIdentification extends StatefulWidget {
  @override
  _ActivityIdentificationState createState() => _ActivityIdentificationState();
}

class _ActivityIdentificationState extends State<ActivityIdentification> {
  String _log = "";
  final _service = ActivityIdentificationService();
  int _requestCodeIdentification;
  int _requestCodeConversion;

  StreamSubscription<ActivityIdentificationResponse> _streamSubsIdentification;
  StreamSubscription<ActivityConversionResponse> _streamSubsConversion;


  /*
  Permette di verificare se i permessi di riconoscimenti dell'attività sono stati dati (true/false).
   */
  void _activityIdentificationPermission() async {
    // Init PermissionHandler
    PermissionHandler permissionHandler = PermissionHandler();
    // Request activity permissions.
    try {
      bool status = await permissionHandler.requestActivityRecognitionPermission();
      log("permission=$status");
      // true if permissions are granted; false otherwise.
      setState(() {
        _log = status.toString();
      });
    } catch (e) {
      log('Error 1:' + e.toString());
    }
  }

  void _activityIdentificationUpdates() async {
    try {
      if (_requestCodeIdentification == null) {
        // This method has an input parameter indicating the update interval,
        _requestCodeIdentification = await _service.createActivityIdentificationUpdates(5000);
      }
    } catch (e) {
      log('Error 2:' + e.toString());
    }
  }

  void _deleteActivityIdentification() async{
    try {
      if(_requestCodeIdentification != null) {
        await _service.deleteActivityIdentificationUpdates(_requestCodeIdentification);
        _requestCodeIdentification = null;
      }
    } catch (e) {
      print(e.toString());
    }
  }


  void _activityConversionUpdates() async {
    try {
      if(_requestCodeConversion == null) {
        _requestCodeConversion = await _service.createActivityConversionUpdates(activityConversions);
      }
    } catch (e) {
      log('Error 2:' + e.toString());
    }
  }

  void _deleteActivityConversion() async{
    try {
      if(_requestCodeConversion != null) {
        await _service.deleteActivityConversionUpdates(_requestCodeConversion);
        _requestCodeConversion = null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        RaisedButton(
          onPressed: _activityIdentificationPermission,
          child: Text("activityIdentificationPermission"),
        ),
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                onPressed: _activityIdentificationUpdates,
                child: Text("START activityIdentification"),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                onPressed: _deleteActivityIdentification,
                child: Text("STOP activityIdentification"),
              ),
            ],
          ),
        ),
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                onPressed: _activityConversionUpdates,
                child: Text("START activityConversion"),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                onPressed: _deleteActivityConversion,
                child: Text("STOP activityConversion"),
              ),
            ],
          ),
        ),
        Text(_log),
      ]),
    );
  }



  @override
  void initState() {
    super.initState();
    _initActivityIdentification();
    _initActivityConversion();
  }

  void _initActivityIdentification() async{
    _streamSubsIdentification = _service.onActivityIdentification.listen((response) {
      log(response.toString());
      setState(() {
        _log = response.toString();
      });
    });
  }

  void _initActivityConversion() async{
    _streamSubsConversion = _service.onActivityConversion.listen((response) {
      /*
      Tutti gli eventi di conversione di attività ordinati in ordine crescente di tempo.
       */
      log(response.toString());
      setState(() {
        _log = response.toString();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _disposeActivityIdentification();
    _disposeActivityConversion();
    _streamSubsIdentification.cancel();
    _streamSubsConversion.cancel();
  }

  void _disposeActivityIdentification() async{
    try {
      if(_requestCodeIdentification != null) {
        await _service.deleteActivityIdentificationUpdates(_requestCodeIdentification);
        _requestCodeIdentification = null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void _disposeActivityConversion() async{
    try {
      if(_requestCodeConversion != null) {
        await _service.deleteActivityConversionUpdates(_requestCodeConversion);
        _requestCodeConversion = null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

}
