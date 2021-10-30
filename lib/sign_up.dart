import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Sign Up",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )),

            SizedBox(
              height: 40,
            ),

            //fullname
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: fullnameController,
                decoration: InputDecoration(
                  hintText: "Fullname...",
                  border: InputBorder.none,
                ),
              ),
            ),

            //email
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email...",
                  border: InputBorder.none,
                ),
              ),
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
                onPressed: () {},
                child: Text("Sign up"),
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
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Already Have an account? Sign in here",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
