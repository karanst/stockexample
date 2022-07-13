import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockexample/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        //  primarySwatch: Colors.blue,
      ),
      home: const Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: ImageIcon(
                const AssetImage("assets/home.png"),
                color: pageIndex == 0 ? const Color(0xff03314b) : Colors.grey,
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: ImageIcon(const AssetImage("assets/chart.png"),
                  color:
                      pageIndex == 1 ? const Color(0xff03314b) : Colors.grey)),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Color(0xff1BCB95), shape: BoxShape.circle),
            child: const Icon(
              CupertinoIcons.arrow_right_arrow_left,
              color: Colors.white,
              size: 18,
            ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: ImageIcon(const AssetImage("assets/settings.png"),
                  color:
                      pageIndex == 2 ? const Color(0xff03314b) : Colors.grey)),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: ImageIcon(const AssetImage("assets/profile.png"),
                  color:
                      pageIndex == 3 ? const Color(0xff03314b) : Colors.grey)),
        ],
      ),
    );
  }
}
