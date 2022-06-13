import 'package:flutter/material.dart';
import 'package:bukka/pages/Home.dart';
import 'package:bukka/pages/RegisterScreen.dart';
import 'package:bukka/pages/Notifications.dart';
import 'package:bukka/pages/login.dart';
import 'package:bukka/pages/cart.dart';
import 'package:bukka/pages/Marketplace.dart';
import 'package:bukka/pages/chat.dart';
import 'package:bukka/pages/Hire.dart';
import 'package:bukka/pages/payment.dart';
//products pages
import 'package:bukka/products/flower.dart';
import 'package:bukka/products/coffee.dart';
import 'package:bukka/products/beans.dart';
import 'package:bukka/products/rice.dart';
import 'package:bukka/products/cocoa.dart';
import 'package:bukka/products/yams.dart';
import 'package:bukka/products/corn.dart';
import 'package:bukka/products/livestock.dart';
import 'package:bukka/products/cocoa.dart';
import 'package:bukka/products/chicken.dart';
import 'package:bukka/products/oil.dart';
import 'package:bukka/products/flour.dart';
import 'package:bukka/products/fruit.dart';
import 'package:bukka/products/melon.dart';
import 'package:bukka/products/cocoa.dart';
import 'package:bukka/products/pets.dart';
import 'package:bukka/products/food.dart';

void main() => runApp(MaterialApp(
  //home: _buildList(),
  // home: Homepage(),
  // debugShowCheckedModeBanner: false,
  // themeMode:ThemeMode.system,
  //theme: ThemeClass.lightTheme,
  //darkTheme: ThemeClass.darkTheme,
  initialRoute: '/',
  routes: {
    '/' :(context) => Homepage(),
    '/register':(context) => RegisterScreen(),
    '/second':(context) => SecondRoute(),
    '/login' : (context) => LoginScreen(),
    '/cart' : (context) => CartScreen(),
    '/market' : (context) => MarketScreen(),
    '/chat' : (context) => LogoApp(),
    '/hire' : (context) => HireScreen(),
    '/pay' : (context) => PaymentScreen(),
    //product routes
    '/flower' : (context) => FlowerScreen(),
    '/coffee' : (context) => CoffeeScreen(),
    '/beans' : (context) => BeanScreen(),
    '/rice' : (context) => RiceScreen(),
    '/cocoa' : (context) => CocoaScreen(),
    '/oil' : (context) => OilScreen(),
    '/pets' : (context) => PetScreen(),
    '/yam' : (context) => YamScreen(),
    '/other' : (context) => OtherScreen(),
    '/fruit' : (context) => FruitScreen(),
    '/livestock' : (context) => LivestockScreen(),
    '/flour' : (context) => FlourScreen(),
    '/chicken' : (context) => ChickScreen(),
    '/melon' : (context) => MelonScreen(),
    '/corn' : (context) => CornScreen(),

  },
));



//second route








//var user = User;
