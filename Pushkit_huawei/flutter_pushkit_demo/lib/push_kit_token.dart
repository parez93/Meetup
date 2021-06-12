import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:huawei_push/huawei_push_library.dart';


class PushKitToken extends StatefulWidget {
  @override
  _PushKitTokenState createState() => _PushKitTokenState();
}

class _PushKitTokenState extends State<PushKitToken> {
  String _token = 'No token';

  void _onTokenEvent(String event) {
    // Requested tokens can be obtained here
    setState(() {
      _token = event;
    });
    log("TokenEvent: " + _token);
  }

  void _onTokenError(Object error) {
    PlatformException e = error;
    log("TokenErrorEvent: " + e.message);
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    log("initPlatformState-START");
    //bool result = await Push.isAutoInitEnabled();
    String result = await Push.setAutoInitEnabled(true);
    log("setAutoInitEnabled=${result}");
    if (!mounted) return;
    Push.getTokenStream.listen(_onTokenEvent, onError: _onTokenError);
    log("initPlatformState-END");
  }

  void getToken() async {
    // Call this method to request for a token
    Push.getToken("");
  }

  void getId() async {
    //String result = await Push.getId();
    _token = await Push.getId();
    log("ID=$_token");
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: getToken,
        child: Text(_token),
      ),
    );
  }
}
