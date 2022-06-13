import 'package:flutter/material.dart';
import 'package:bukka/pages/RegisterScreen.dart';
import 'package:bukka/pages/cart.dart';
import 'package:bukka/pages/Marketplace.dart';
import 'package:bukka/pages/Hire.dart';
import 'package:bukka/pages/login.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.green,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: /',
      style: optionStyle,
    ),
    Text(
      'Index 1: /cart',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          iconTheme: IconThemeData(color: Colors.green[900]),
          backgroundColor: Colors.white,
          centerTitle: true,
          // backgroundColor:Theme.of(context).appBarTheme.backgroundColor ,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              color: Colors.green[900],
              tooltip: 'Notifications',
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: Colors.green[900],
              tooltip: 'Profile',
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }),
                );
              },
            ),
          ]),
      body: ListView(
        //mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: FittedBox(
                child: Image(
                  image: AssetImage('assets/agri.jpeg'),
                  // fit: BoxFit.cover,
                  fit: BoxFit.fill,
                ),
              )),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: TweenAnimationBuilder(
                  child: Text(
                    'Hey, User',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 32.0,
                      color: Colors.green[900],
                    ),
                  ),
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 3),
                    curve: Curves.bounceIn,
                    builder: (BuildContext context, double _val , Widget? child){
                    return Opacity(
                    opacity: _val,
                    child: Padding(
                      padding: EdgeInsets.only(top: _val * 10),
                      child: child,
                    )
                    );
                 }
                  )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 1, 9, 30),
                  child: Text(
                    'Bukka is here to save you all the stress Agriculture brings. We facilitate buying and selling and connects workers to farmers.',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(width: 1.5, color: Colors.black38),
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                  ),
                  //padding: const EdgeInsets.all(20),
                  padding: EdgeInsets.all(Insets.small),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Icon(Icons.group, color: Colors.green[500]),
                        const Text('USERS:',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              height: 1.5,
                            )),
                        const Text(
                          '1250',
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ]),
                      Column(
                        children: [
                          Icon(Icons.payments, color: Colors.green[500]),
                          const Text('DEALS:',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                height: 1.5,
                              )),
                          const Text(
                            '22,500',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.engineering_sharp,
                              color: Colors.green[500]),
                          const Text('HIRES:',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                height: 1.5,
                              )),
                          const Text(
                            '265',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 30.0),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      const Icon(Icons.star, color: Colors.black),
                    ]),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '370 Reviews',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // snackBar = SnackBar(
      // content: Text('Yay! A SnackBar!'),
      //);
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[900],
                ),
                child: RichText(
                  text: TextSpan(
                      text: 'SER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'VI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        TextSpan(
                          text: 'CES',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        TextSpan(
                          text: '...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ]),
                )),
            ListTile(
              title: const Text('Register'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return RegisterScreen();
                  }),
                );
              },
            ),
            ListTile(
              title: const Text('MarketPlace'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return MarketScreen();
                })
                );
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Agro Delivery'),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return CartScreen();
               })
               );
              },
            ),
            ListTile(
              title: const Text('Agro Hire'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HireScreen();
                  Navigator.pop(context, '/');
                })
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        child: Container(
          height:50.0 ,//set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
              color: Colors.grey[200],
             // borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              IconButton(
                icon: Icon(Icons.home),
                color: Colors.green[700],
                onPressed: (){
                  Navigator.pushNamed(context, '/');
              },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.green[700],
                onPressed: (){
                  Navigator.pushNamed(context, '/market');
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.green[700],
                onPressed: (){
                  Navigator.pushNamed(context, '/chat');
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.green[700],
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


String User = "Achufam";
String title = "BUKKA";

class Insets {
  static const double xsmall = 3;
  static const double small = 1;
  static const double medium = 5;
  static const double large = 10;
  static const double extraLarge = 20;
// etc
}

class Fonts {
  static const String Roboto = 'Roboto';
// etc
}

class TextStyles {
  static const TextStyle Roboto = const TextStyle(
    fontFamily: Fonts.Roboto,
  );
  static TextStyle buttonText1 =
  TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  static TextStyle buttonText2 =
  TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
  static TextStyle h1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle h2 = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  static late TextStyle body1 = Roboto.copyWith(color: Color(0xFF42A5F5));
// etc
}
