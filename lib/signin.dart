import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/newsignin.png",
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: Colors.red,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Connect with us",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              height: 40,
                              width: 40,
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/instagram.png",
                              height: 40,
                              width: 40,
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/twitter.png",
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
