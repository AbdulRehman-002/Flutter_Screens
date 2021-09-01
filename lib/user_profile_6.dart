import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  //double he=MediaQuery.of(context).size.height * 0.25;
  @override
  Widget build(BuildContext context) {
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "History",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Color(0xFF515678),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 10),
              Container(
                height: 110,
                color: Colors.grey[300],
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: Row(
                    children: [
                      // Text("data"),
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
                            backgroundColor: Colors.grey.shade300,
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
                            "Activities",
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
                            backgroundColor: Colors.grey.shade300,
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
                            backgroundColor: Colors.grey.shade300,
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'George Wilkerson',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'Hi Angel, Please fill in...',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "4/20/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'Ophelia Tucker',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'What are you doing?',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "6/15/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'Mittie James',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'Whats up?',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "1/29/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'Milie Bailay',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'What are you doing?',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "4/23/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'Jared Bailey',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'Hi Angel, Please fill in...',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "10/20/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_image.png"),
                        radius: 20,
                      ),
                      title: Text(
                        'Jack Rogers',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'Send me the details',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 20, // space between two icons
                        children: [
                          Text(
                            "06/26/2017",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey.shade500,
                          ), // icon
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
