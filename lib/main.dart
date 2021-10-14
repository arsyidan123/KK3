import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialogDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              showDialog(context: context, builder: (context) => SimpleDialog(
                children: [
                  Text('Pop Up Shown', style: TextStyle(color: Colors.white, fontSize: 15)),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Dismiss', style: TextStyle(color: Colors.white, fontSize: 15)))
                ],
                backgroundColor: Colors.blue,
                title: Text('Pop Up'),
                contentPadding: EdgeInsets.all(20),
                titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              ));
            },
            child: Text('Show Dialog'),
          ),
        ),
      ),
    );
  }
}