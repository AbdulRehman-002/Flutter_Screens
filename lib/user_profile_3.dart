import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height * 0.25;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF515678),
                      Color(0xFFB454865) //#515678
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 8,
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 30,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile_image.png"),
                            radius: 30,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.brightness_1,
                                    size: 14.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "John Smith",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              //width: 50,
                              child: TextField(
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Username',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.email_sharp,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 50,
                              child: TextField(
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 50,
                              child: TextField(
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Date',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 50,
                              child: TextField(
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Address',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 50,
                              child: TextField(
                                obscureText: true,
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.greenAccent.shade400,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              width: 50,
                              child: TextField(
                                obscureText: true,
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
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
