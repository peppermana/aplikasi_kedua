import 'package:aplikasi_kedua/email.dart';
import 'package:aplikasi_kedua/sign_up.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Sign in",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )),

            SizedBox(
              height: 40,
            ),

            //username
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Username...",
                  border: InputBorder.none,
                ),
              ),
            ),

            //password
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                obscureText: isVisible,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password...",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: (isVisible == true)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    )),
              ),
            ),

            //login, sign in button
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text("Sign in"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[800]),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),

            //forgot password
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Email()));
                },
                child: Text(
                  "Forgot password",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),

            //dont have an account sign up
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text("dont have an account? sign up here",
                    style: TextStyle(color: Colors.black87)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
