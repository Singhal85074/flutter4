

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _setIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('TextField Example'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Email',
              hintText: 'Enter your email',
              suffixIcon: Icon(Icons.email),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            maxLines: 1,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Password',
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(_setIcon ?Icons.security : Icons.remove_red_eye),
                onPressed: (){
                  setState(() {
                    _setIcon = !_setIcon;
                  });
                },
              ),
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
            maxLength: 10,
            maxLines: 1,
            obscureText: _setIcon,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            onPressed: () {},
            child: Text("Sign in"),
          )
        ],
      ),
    );
  }
}
