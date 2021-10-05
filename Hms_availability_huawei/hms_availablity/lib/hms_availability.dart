import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:huawei_hmsavailability/huawei_hmsavailability.dart';

class HmsAvailability extends StatefulWidget {
  const HmsAvailability({Key? key}) : super(key: key);

  @override
  _HmsAvailabilityState createState() => _HmsAvailabilityState();
}

class _HmsAvailabilityState extends State<HmsAvailability> {
  late HmsApiAvailability hmsApiAvailability;

  String _result = "HMS availability result code: unknown";
  List<String> _eventList = ["Availability result events will be listed"];

  @override
  void initState() {
    super.initState();
    // Create an instance
    hmsApiAvailability = new HmsApiAvailability();
  }

  _getAvailability() async {
    try {
      // final int res = await hmsApiAvailability.isHMSAvailableWithApkVersion(28);
      final int res = await hmsApiAvailability.isHMSAvailable();
      setState(() => _result = "Availability result code: $res");
      if (res != 0) {
        _getErrorDialog(res);
      }
    } on Exception catch (e) {
      _updateList(e.toString());
    } on Error catch (e) {
      _updateList(e.toString());
    }
  }

  _getErrorDialog(int code) {
    // Set a listener to track events for activity results and dialog cancellations
    hmsApiAvailability.setResultListener = (AvailabilityEvent? event) {
      if(event != null) {
        _updateList("Availability event: " + describeEnum(event));
      }
    };

    try {
      hmsApiAvailability.getErrorDialog(code, 1000, true);
    } on Exception catch (e) {
      _updateList(e.toString());
    } on Error catch (e) {
      _updateList(e.toString());
    }
  }

  _updateList(String s) {
    setState(() => _eventList.add(s));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hms Availability Demo")),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(_result),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: RaisedButton(
                  color: Color(0xff394867),
                  textColor: Colors.white,
                  child: Text("Check Hms Core Availability"),
                  onPressed: _getAvailability),
            ),
            Divider(color: Colors.black),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListView.builder(
                    itemCount: _eventList.length,
                    itemBuilder: (ctx, index) {
                      return Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(_eventList[index],
                                style: TextStyle(
                                    fontWeight: index == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal)),
                          ));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    hmsApiAvailability.destroyStreams();
    super.dispose();
  }
}