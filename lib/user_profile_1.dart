import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class UserProfile1Screen extends StatefulWidget {
  const UserProfile1Screen({Key? key}) : super(key: key);

  @override
  _UserProfile1ScreenState createState() => _UserProfile1ScreenState();
}

class _UserProfile1ScreenState extends State<UserProfile1Screen> {
  @override
  // ignore: override_on_non_overriding_member
  bool button1 = true;
  bool button2 = false;
  bool location = true;
  bool restaurant = false;
  bool deals = false;
  bool profile = false;
  bool address = false;
  bool reviews = false;
  bool aboutus = false;
  bool faq = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 20),
                child: Column(
                  children: [
                    Row(
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "John Smith Meu",
                                  style: TextStyle(
                                    wordSpacing: 4,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.stars_sharp,
                                  size: 17.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "FRANCE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      letterSpacing: 2.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("button1");
                    setState(() {
                      button1 = !button1;
                      button2 = !button2;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 50,
                    color: button1 ? Color(0xFFF12412) : Colors.grey.shade200,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: button1 ? Colors.white : Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "CALL US",
                            style: TextStyle(
                              color: button1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Button2");
                    setState(() {
                      button1 = !button1;
                      button2 = !button2;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 50,
                    color: button2 ? Color(0xFFF12412) : Colors.grey.shade200,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail_sharp,
                            color: button2 ? Colors.white : Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "MAIL US",
                            style: TextStyle(
                              color: button2 ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("Location");
                                setState(() {
                                  location = true;
                                  restaurant = false;
                                  deals = false;
                                  profile = false;
                                  address = false;
                                  reviews = false;
                                  aboutus = false;
                                  faq = !faq;
                                });
                              },
                              child: Container(
                                color:
                                    location ? Colors.grey[200] : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.location_on_sharp,
                                      color: location
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                      size: 25,
                                    ),
                                    title: Text(
                                      location
                                          ? 'Location'.toUpperCase()
                                          : "Location",
                                      style: TextStyle(
                                        color: location
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  location = false;
                                  restaurant = true;
                                  deals = false;
                                  profile = false;
                                  address = false;
                                  reviews = false;
                                  aboutus = false;
                                  faq = false;
                                });
                              },
                              child: Container(
                                color: restaurant
                                    ? Colors.grey[200]
                                    : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.no_meals,
                                      color: restaurant
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                      size: 25,
                                    ),
                                    title: Text(
                                      restaurant
                                          ? 'Restaurant'.toUpperCase()
                                          : 'Restaurant',
                                      style: TextStyle(
                                        color: restaurant
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  location = false;
                                  restaurant = false;
                                  deals = true;
                                  profile = false;
                                  address = false;
                                  reviews = false;
                                  aboutus = false;
                                  faq = false;
                                });
                              },
                              child: Container(
                                color: deals ? Colors.grey[200] : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    // leading: Icon(
                                    //   Icons.mail_sharp,
                                    //   color: deals ? Color(0xFFF12412) : Colors.black,
                                    //   size: 25,
                                    // ),
                                    leading: Image.asset(
                                      'assets/icons/hand-shake.png',
                                      height: 25,
                                      width: 25,
                                      color: deals
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                    ),
                                    title: Text(
                                      deals ? 'Deals'.toUpperCase() : 'Deals',
                                      style: TextStyle(
                                        color: deals
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.grey.shade500,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  location = false;
                                  restaurant = false;
                                  deals = false;
                                  profile = true;
                                  address = false;
                                  reviews = false;
                                  aboutus = false;
                                  faq = false;
                                });
                              },
                              child: Container(
                                color:
                                    profile ? Colors.grey[200] : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.person,
                                      color: profile
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                      size: 25,
                                    ),
                                    // leading: Image.asset(
                                    //   'assets/icons/user-solid.svg',
                                    //   height: 15,
                                    //   width: 15,
                                    //   color: profile ? Color(0xFFF12412) : Colors.black,
                                    // ),
                                    title: Text(
                                      profile
                                          ? 'Profile'.toUpperCase()
                                          : 'Profile',
                                      style: TextStyle(
                                        color: profile
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  location = false;
                                  restaurant = false;
                                  deals = false;
                                  profile = false;
                                  address = true;
                                  reviews = false;
                                  aboutus = false;
                                  faq = false;
                                });
                              },
                              child: Container(
                                color:
                                    address ? Colors.grey[200] : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    // leading: Icon(
                                    //   Icons.library_books_outlined,
                                    //   color: address ? Color(0xFFF12412) : Colors.black,
                                    //   size: 25,
                                    // ),
                                    leading: Image.asset(
                                      'assets/icons/address-book.png',
                                      height: 20,
                                      width: 20,
                                      color: address
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                    ),
                                    title: Text(
                                      address
                                          ? 'Address Book'.toUpperCase()
                                          : "Address Book",
                                      style: TextStyle(
                                        color: address
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  location = false;
                                  restaurant = false;
                                  deals = false;
                                  profile = false;
                                  address = false;
                                  reviews = true;
                                  aboutus = false;
                                  faq = false;
                                });
                              },
                              child: Container(
                                color:
                                    reviews ? Colors.grey[200] : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/icons/review.png',
                                      height: 25,
                                      width: 25,
                                      color: reviews
                                          ? Color(0xFFF12412)
                                          : Colors.black,
                                    ),
                                    title: Text(
                                      reviews
                                          ? 'Reviews'.toUpperCase()
                                          : "Reviews",
                                      style: TextStyle(
                                        color: reviews
                                            ? Colors.black
                                            : Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.grey.shade500,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            location = false;
                            restaurant = false;
                            deals = false;
                            profile = false;
                            address = false;
                            reviews = false;
                            aboutus = true;
                            faq = false;
                          });
                        },
                        child: Container(
                          color: aboutus ? Colors.grey[200] : Colors.white,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ListTile(
                              leading: Image.asset(
                                'assets/icons/information-button.png',
                                height: 20,
                                width: 20,
                                color:
                                    aboutus ? Color(0xFFF12412) : Colors.black,
                              ),
                              title: Text(
                                aboutus ? 'About Us'.toUpperCase() : "About Us",
                                style: TextStyle(
                                  color:
                                      aboutus ? Colors.black : Colors.grey[500],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            location = false;
                            restaurant = false;
                            deals = false;
                            profile = false;
                            address = false;
                            reviews = false;
                            aboutus = false;
                            faq = true;
                          });
                        },
                        child: Container(
                          color: faq ? Colors.grey[200] : Colors.white,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ListTile(
                              leading: Image.asset(
                                'assets/icons/conversation-questions (1).png',
                                height: 25,
                                width: 25,
                                color: faq ? Color(0xFFF12412) : Colors.black,
                              ),
                              title: Text(
                                "FAQ",
                                style: TextStyle(
                                  color: faq ? Colors.black : Colors.grey[500],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            //height: 60,
                            width: 120,
                            child: ElevatedButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sign Out",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      'assets/icons/signout-arrow.png',
                                      height: 15,
                                      width: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(
                                    Colors.white,
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFF12412),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () => null),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
