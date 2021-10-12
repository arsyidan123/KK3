import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast Demo'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: RaisedButton(
              child: const Text('Show Toast'),
              onPressed: () => Fluttertoast.showToast(msg: 'Toast Notification'
                  ,toastLength: Toast.LENGTH_SHORT
                  ,gravity: ToastGravity.BOTTOM),
            ),
          ),
        ),
      ),
    );
  }
}