import 'package:flutter/material.dart';
import 'package:bukka/pages/Home.dart';
import 'package:bukka/pages/RegisterScreen.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.green[900],
              fontFamily: 'Roboto',
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 250.0),
            child: Column(
              children: [
                GestureDetector(
                  child:Image(image: AssetImage('assets/Vector.png'),
                  ),
                  onTap: (){
                    print('Tapped');
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child:Text('No Notification Yet!',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

String title = 'Notifications';
