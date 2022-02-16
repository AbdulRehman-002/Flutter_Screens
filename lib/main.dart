import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sign_in/user-profile_2.dart';
import 'package:flutter_sign_in/user_profile_3.dart';
import 'user_profile_7.dart';
import 'user_profile_4.dart';
import 'user_profile_6.dart';
import 'user_profile_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white30,
      ),
      //value: SystemUiOverlayStyle.light,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),

        home: NavDrawerScreen(),
        //home: EditProfileScreen(),
        //home: ReportDetails(),
        //home: HistoryScreen(),
        //home: UserProfile1Screen(),
        //home: UserProfile2Screen(),
      ),
    );
  }
}
