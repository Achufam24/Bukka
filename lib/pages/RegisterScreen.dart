import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  // Initial Selected Value
  String dropdownvalue = 'Select Your Role';

  // List of items in our dropdown menu
  var items = [
    'Select Your Role',
    'Agent',
    'Trader',
    'Farmer',
    'Worker',
  ];

  //checkbox value
  bool isChecked = false;
  bool _passwordVisible = false;

  bool validate = false;

  @override
  void initState() {
    _passwordVisible = false;
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  child: Text(formName),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
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
                      //icon: Icon(Icons.person),
                      hintText: 'Wetin People da call you?',
                      hintStyle: TextStyle(
                        color: Colors.red,
                      ),
                      // errorText: 'Abeg put name fine',
                      labelText: 'Name *',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
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
                      //icon: Icon(Icons.email),
                      hintText: 'Put ya Email',
                      hintStyle: TextStyle(
                        color: Colors.red,
                      ),
                      labelText: 'Email *',
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
                      hintText: 'Where you da stay?',
                      hintStyle: TextStyle(color: Colors.red),
                      labelText: 'Address *',
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
                  margin: EdgeInsets.only(top: 30.0),
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
                  margin: EdgeInsets.only(top: 30.0),
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
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.black,
                    ),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                    isExpanded: true,
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    dropdownColor: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: CheckboxListTile(
                    title: Text(
                      "Click to Accept T & C's",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    value: isChecked,
                    //value: checkedValue,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
                //dialog

                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showAlertDialog(context);

                        formName = 'User Registered Successfully!';
                        msg = 'Processing...';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: const Size(400, 40),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    child: Text('$msg'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget remindButton = TextButton(
    child: Text(
      "No",
      style: TextStyle(
        color: Colors.green[900],
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.pushNamed(context, '/');
    },
  );
  Widget cancelButton = TextButton(
    child: Text(
      "Yes",
      style: TextStyle(
        color: Colors.green[900],
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.pushNamed(context, '/market');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Registration  Successful!"),
    content: Text("Do you want to visit marketplace?"),
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

String title = 'Register';
String formName = 'Registration Form';
String msg = 'Submit';
