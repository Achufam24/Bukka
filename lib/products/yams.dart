import 'package:flutter/material.dart';
import 'package:bukka/model/model.dart';
import 'package:bukka/pages/Marketplace.dart';
import 'package:bukka/pages/services.dart';
import 'package:bukka/model/items.dart';
import 'package:bukka/shared/Heart.dart';

class YamScreen extends StatefulWidget {
  const YamScreen({Key? key}) : super(key: key);

  @override
  State<YamScreen> createState() => _YamScreenState();
}

class _YamScreenState extends State<YamScreen> {

  final GlobalKey _listkey = GlobalKey();

  List<ItemsList> Items = [
    ItemsList(quantity: '40 Tubers', image: 'jerry.jpeg', price:'N50000', seller:'Jerry Akem', item:'yams.jpeg'),
    ItemsList(quantity: '12 Tubers', image: 'achu.jpeg', price:'N30000', seller:'Achu Agbama', item:'yams.jpeg'),
    ItemsList(quantity: '20 Tubers', image: 'elisha.jpeg', price:'N480000', seller:'Elisha Agbama',item:'yams.jpeg'),
    ItemsList(quantity: '15 Tubers', image: 'agri.jpeg', price:'N410000', seller:' Jessica Olushola', item:'yams.jpeg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yams',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[900],
        ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
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
