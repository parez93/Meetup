import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:huawei_push/huawei_push_library.dart';

import 'model/coupon.dart';


class PushKitDataMessage extends StatefulWidget {
  @override
  _PushKitDataMessageState createState() => _PushKitDataMessageState();
}

class _PushKitDataMessageState extends State<PushKitDataMessage> {

  var _message = "";

  void _onMessageReceived(RemoteMessage remoteMessage) {
    // Called when a data message is received
    int min = 0;
    int max = 100;
    final rdn = min + Random().nextInt(max - min);

    String data = remoteMessage.getData;
    print(data);
    Coupon c = Coupon.fromJson(json.decode(data));
    c.couponCode += rdn.toString();
    print(c.toString());
    setState(() {
      _message = data;
    });

    showCouponDialog(c);
  }

  void _onMessageReceiveError(Object error) {
    // Called when an error occurs while receiving the data message
    print(error.toString());
    setState(() {
      _message = error.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    print("initPlatformState-START");
    //bool result = await Push.isAutoInitEnabled();
    String result = await Push.setAutoInitEnabled(true);
    print("setAutoInitEnabled=${result}");
    if (!mounted) return;
    Push.onMessageReceivedStream.listen(_onMessageReceived, onError: _onMessageReceiveError);
    print("initPlatformState-END");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Push Data Message"),
      ),
      body: Center(
        child: Container(
          child: Text(_message),
        ),
      ),
    );
  }

  showCouponDialog(Coupon coupon) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Container(
            child: Text(
              coupon.title.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            )),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        content: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(coupon.body),
              SizedBox(
                height: 10,
              ),
              Text(
                coupon.couponCode,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                color: Colors.green,
                child: Text(
                  'Claim Now',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
