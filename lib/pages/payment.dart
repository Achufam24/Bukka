import 'package:flutter/material.dart';
import 'package:bukka/model/model.dart';
import 'package:bukka/pages/Home.dart';
import 'package:bukka/products/rice.dart';
import 'package:bukka/pages/Marketplace.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Payment Options',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child:Center(
            child: Image(image: AssetImage('assets/paystack.png')),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
            margin: EdgeInsets.fromLTRB(0.0, 50.0, 80.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      child:Row(
                        children: [
                          Container(
                            child: Text('Other Payment Methods',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40.0, 20.0, 0, 10.0),
                      child:Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.payments),
                          ),
                          Container(
                            child: Text('Bank Transfer'),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(40.0, 20.0, 0, 10.0),
                      child:Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.credit_card),
                          ),
                          Container(
                            child: Text('Card Payments'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40.0, 20.0, 0, 10.0),
                      child:Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.paypal),
                          ),
                          Container(
                            child: Text('Paypal'),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height:50.0, //set your height here
           width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

                  ElevatedButton.icon(
                    onPressed: (){
                      print('Pay');
                    },
                    label: Text('Pay',
                    style: TextStyle(
                      color: Colors.green[900],
                    ),
                    ),
                    icon: Icon(
                      Icons.arrow_right,
                      size: 24.0,
                      color: Colors.green[900],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      //padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                  ),
                  Container(
                    child: Text('N 40,000',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    ),
                  ),
              //add as many tabs as you want here
            ],
          ),
        ),
      ),
    );
  }
}


