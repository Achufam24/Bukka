import 'package:flutter/material.dart';
import 'package:bukka/model/model.dart';
import 'package:bukka/pages/Marketplace.dart';

class ProductDetail extends StatelessWidget {
  final ProductList;
  //ProductDetail({ required this.ProductList });
  const ProductDetail({Key? key, required this.ProductList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ProductList.product,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[900],
        ),
      ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
      //backgroundColor: Colors.green[700],
      ),
      body: ListView(
        children: [
          Image.asset('assets/${ProductList.image}'),
          SizedBox(
            height: 10,
          ),
          Center(
            child:Text(ProductList.product,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(ProductList.details,
            style: TextStyle(
              letterSpacing: 1.5,
              fontFamily: 'Roboto',
            ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            child:ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '${ProductList.link}');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: const Size(50, 50),
                    //padding: EdgeInsets.symmetric(
                    // horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                child: Text('Buy or sell ${ProductList.product}')
            ),
          )
        ],
      ),
    );
  }
}