//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:bukka/pages/Home.dart';

void main() => runApp(const LogoApp());

class LogoApp extends StatefulWidget {
  const LogoApp({super.key});

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState(){
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: 0, end: 200).animate(controller)
    ..addListener(() {
      setState((){

      });
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
     // padding: EdgeInsets.all(5.0),
      body:Center(
      child:Container(
       // margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const Card(),
      ),
      )
    );
    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  }
}


class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child:
        Image.asset('assets/Bukka.png',
        fit: BoxFit.fill,
        ),
        ),

        Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('Coming Soon!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            )
        )
      ],
    );
  }
}
