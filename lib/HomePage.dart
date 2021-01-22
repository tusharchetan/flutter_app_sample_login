
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child:Text("Go back"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )

      ),
    );
  }
}

