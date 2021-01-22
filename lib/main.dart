import 'package:flutter/material.dart';
import 'package:flutter_app_sample_login/webservices.dart';

import 'HomePage.dart';

void main()
{
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      home: Login()
    );
  }
}

class Login extends StatelessWidget {
  WebServices _services;
  TextEditingController _userName,_password;

  Login()
  {
    _services = new WebServices();
    _userName = new TextEditingController();
    _password = new TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(Icons.lock,size: 128,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text("Login Page"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _userName,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefix: Text("+91-"),
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Mobile Number"
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password"
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              _services.farmerLogin(_userName.text, _password.text).then((value) => print(value));
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen()));
            },child: Text("Login"),)
        ],
      ),
      appBar: AppBar(
        title: Icon(Icons.lock),
      ),
    );
  }
}

