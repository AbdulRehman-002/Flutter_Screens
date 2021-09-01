import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UserProfile2Screen extends StatefulWidget {
  const UserProfile2Screen({Key? key}) : super(key: key);

  @override
  _UserProfile2ScreenState createState() => _UserProfile2ScreenState();
}

class _UserProfile2ScreenState extends State<UserProfile2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                          Spacer(),
                          Icon(
                            Icons.lock,
                            color: Colors.greenAccent.shade400,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/profile_image.png"),
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
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.19,
              left: 20,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 110,
                //padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 4.0,
                            percent: 0.9,
                            center: new Text(
                              "90%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                            backgroundColor: Colors.white,
                            //progressColor: Colors.red,
                            linearGradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.redAccent.shade700,
                                Colors.red.shade200 //#515678
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 4.0,
                            percent: 0.8,
                            center: new Text(
                              "80%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                            backgroundColor: Colors.white,
                            // progressColor: Colors.blue[800],
                            linearGradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFF2537D8), Colors.pink.shade300],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Approved",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 4.0,
                            percent: 0.65,
                            center: new Text(
                              "65%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                            backgroundColor: Colors.white,
                            //progressColor: Colors.red,
                            linearGradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.red.shade500,
                                Colors.redAccent.shade700,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rejected",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 25,
              right: 25,
              bottom: 0,
              child: Container(
                width: 40,
                //height: 280,
                //color: Colors.green,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          'Ann Chapman',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email_sharp,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          'ann.chapman48@example.com',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          '4/3/1970',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          'S Thomasl Lane, Rochester, New York',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.call,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          '(994)-584-8829',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.lock,
                          color: Colors.greenAccent.shade400,
                        ),
                        title: Text(
                          '************',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
