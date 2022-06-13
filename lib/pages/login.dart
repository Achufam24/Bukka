import 'package:flutter/material.dart';
import 'package:bukka/pages/Home.dart';
import 'package:bukka/pages/RegisterScreen.dart';
import 'package:bukka/pages/Notifications.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisible = true;

  //bool validate = true;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(title),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.green,
                      width: 3.0,
                    )),
                    hintText: 'Put your Email',
                    hintStyle: TextStyle(color: Colors.red),
                    labelText: 'Email: *',
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  //controller: _userPasswordController,
                  obscureText: !_passwordVisible,
                  //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.green,
                      width: 3.0,
                    )),
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      title = 'Welcome User, ${_formKey.hashCode}';
                      msg = 'Processing...';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: const Size(400, 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  child: Text('$msg'),
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        child: Container(
          height: 50.0, //set your height here
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
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/market');
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/chat');
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.green[700],
                onPressed: () {
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

String msg = 'Login';
String title = 'Input Details';
