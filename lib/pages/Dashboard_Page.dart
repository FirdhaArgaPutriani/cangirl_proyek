import 'package:cangirl_proyek/pages/Note_Page.dart';
import 'package:flutter/material.dart';

import 'Calender_Page.dart';
import 'Profile_Pages.dart';
import 'Note_Page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFBFF5),
        title: Image.asset("assets/images/icon.png", height: 40, width: 40),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/male.png'),
            iconSize: 45,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  Text(
                    "Welcome To CanGirls (Calesnder Girls)!",
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFFFF9DEF)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Container(
                width: 238,
                height: 152,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9DEF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      "Period Day \n'3'",
                      style: const TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Align(
                            alignment: Alignment.bottomCenter,
                          ),
                          // ignore: prefer_const_constructors
                          Image.asset(
                            'assets/images/logo1.png',
                            height: 48,
                            width: 48,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                width: 312,
                height: 154,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9DEF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CalendarPage(),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/calender.png',
                                    width: 45.0,
                                    height: 45.0,
                                  ),
                                  const Text(
                                    "Calender",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DashboardPage(),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/setting.png',
                                    width: 45.0,
                                    height: 45.0,
                                  ),
                                  const Text(
                                    "Setting",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotePage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/note.png',
                            width: 45.0,
                            height: 45.0,
                          ),
                          const Text(
                            "Note",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFBFF5),
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Call Center',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/logo1.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
        ],
      ),
    );
  }
}
