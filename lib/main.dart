import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage()
    );
  }
}
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      backgroundColor: Colors.lightGreenAccent,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                color: Colors.teal,
              ),
              Positioned(
                right: -40,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                )),
              Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                  )),
              Positioned(
                  top: -50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 40,
                  )),
              Positioned(
                  left: -50,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    radius: 40,
                  )),
            ],
          ),
        )
        ),
    );
  }
}

