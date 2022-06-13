//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:bukka/pages/Home.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            _title,
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
        margin: EdgeInsets.only(bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center ,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
                child: Icon(Icons.remove_shopping_cart_outlined,
                size: 60.0,
                ),
            ),
             Text(
              'Empty Cart',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

String _title = 'Cart';

