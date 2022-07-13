import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockexample/widgets/watchlist_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset("assets/icon.jpeg"),
        title: Text(
          "Alex Julia",
          style: GoogleFonts.lato(
              fontSize: 20,
              color: Color(0xff03314b),
              fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: Color(0xff03314b),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              color: const Color(0xff03314b),
            ),
            color: const Color(0xff03314b),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 35),
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(2 / 360),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 200,
                            child: Column(),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff1BCB95)),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Portfolio value",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffa0c0d9)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 135.0,
                              ),
                              child: Text(
                                "2.11% ↑",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1BCB95),
                                ),
                              ),
                            ),
                            const Text(
                              "\$15,136.32",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xfff3f7fa)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Deposit",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(90, 30),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      primary: const Color(0xff1BCB95)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Withdraw",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffa0c0d9),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(90, 30),
                                      side: const BorderSide(
                                        width: 1.0,
                                        color: Color(0xffa0c0d9),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      primary: Colors.transparent
                                      //const Color(0xff1BCB95)
                                      ),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                // Colors.transparent
                                const Color(0xff03314b)),
                      ),
                      Positioned(
                        right: 30,
                        top: 30,
                        child: Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 60,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      "assets/apple.png",
                                      color: const Color(0xff03314b),
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      "assets/paypal.png",
                                      color: const Color(0xff03314b),
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      "assets/adobe.png",
                                      color: const Color(0xff03314b),
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_drop_down
                                    //CupertinoIcons.arrowtriangle_down_fill
                                    ,
                                    color: Colors.grey,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Watchlist",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 18,
                                color: Color(0xff03314b),
                                fontWeight: FontWeight.w900))),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff1BCB95),
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return WatchlistCard(
                          image: cardDetails[index]['image'].toString(),
                          title: cardDetails[index]['title'].toString(),
                          subtitle: cardDetails[index]['subtitle'].toString(),
                          percentage:
                              cardDetails[index]['percentage'].toString(),
                          price: cardDetails[index]['price'].toString(),
                          text: cardDetails[index]['text'].toString(),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Text("Stocks Activity",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Color(0xff03314b),
                              fontWeight: FontWeight.w900))),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                child: Image.asset(
                                  "assets/tesla.png",
                                  color: const Color(0xff03314b),
                                  height: 20,
                                  width: 20,
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "TSLA",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff03314b),
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "Tesla",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "25.94",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1BCB95),
                                ),
                              ),
                              Text(
                                "↑ 0.49%",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1BCB95),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "\$ 227.26",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff03314b),
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "10 Shares",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
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
      ),
    );
  }
}
