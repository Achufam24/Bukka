import 'package:flutter/material.dart';
import 'package:bukka/model/model.dart';
import 'package:bukka/pages/Marketplace.dart';
import 'package:bukka/pages/services.dart';
import 'package:bukka/model/items.dart';
import 'package:bukka/shared/Heart.dart';

class CocoaScreen extends StatefulWidget {
  const CocoaScreen({Key? key}) : super(key: key);

  @override
  State<CocoaScreen> createState() => _CocoaScreenState();
}

class _CocoaScreenState extends State<CocoaScreen> {

  final GlobalKey _listkey = GlobalKey();

  List<ItemsList> Items = [
    ItemsList(quantity: '400 Bags', image: 'jerry.jpeg', price:'N1250000', seller:'Jerry Akem', item:'coffee.jpg'),
    ItemsList(quantity: '100 Bags', image: 'achu.jpeg', price:'N3000000', seller:'Achu Agbama', item:'coffee2.jpg'),
    ItemsList(quantity: '200 Bags', image: 'elisha.jpeg', price:'N4800000', seller:'Elisha Agbama',item:'coffee3.jpg'),
    ItemsList(quantity: '15 Bags', image: 'agri.jpeg', price:'N410000', seller:' Jessica Olushola', item:'cocoa.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cocoa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          key: _listkey,
          itemCount: Items.length,
          itemBuilder: (context, index) {
            return  GestureDetector(
              onTap: (){
                showAlertDialog(context);
                print(' Dialog Box');
              },
              child:Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                  child :Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 400.0,
                      child:Card(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    child: Card(
                                      elevation: 0,
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage('assets/${Items[index].image}'),
                                        ),
                                        title: Text(Items[index].quantity),
                                        subtitle: Text(Items[index].seller),
                                        trailing: Heart(),
                                      ),
                                    )
                                ),
                                Expanded(
                                  child: Image(image: AssetImage('assets/${Items[index].item}'),
                                    fit: BoxFit.fill,
                                  ),
                                )



                              ]
                          )
                      )
                  )
              ),
            );
          }
      ),
    );
  }
}


showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget remindButton = TextButton(
    child: Text("No",
      style: TextStyle(
        color: Colors.green[900],
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget cancelButton = TextButton(
    child: Text("Yes",
      style: TextStyle(
        color: Colors.green[900],
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed:  () {
      Navigator.pushNamed(context, '/pay');
    },
  );


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Item Selected"),
    content: Text("Proceed to Payment?"),
    actions: [
      remindButton,
      cancelButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
