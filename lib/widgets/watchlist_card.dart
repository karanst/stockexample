import 'package:flutter/material.dart';

class WatchlistCard extends StatelessWidget {
  String image, title, subtitle, percentage, price, text;
  WatchlistCard(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.percentage,
      required this.price,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 210,
        // height: 40,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Image.asset(
                        image,
                        color: const Color(0xff03314b),
                        height: 20,
                        width: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff03314b),
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Text(
                  percentage,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1BCB95),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff03314b),
                          fontWeight: FontWeight.w900),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        price,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/chart.jpeg',
                  height: 65,
                  width: 120,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

final cardDetails = [
  {
    "image": "assets/adobe.png",
    "title": "ADB",
    "subtitle": "Adobe Inc",
    "percentage": "↑ 5.49%",
    "price": "\$643.48",
    "text": "33.49"
  },
  {
    "image": "assets/tesla.png",
    "title": "TSLA",
    "subtitle": "Tesla",
    "percentage": "↑ 2.49%",
    "price": "\$350.48",
    "text": "20.49"
  },
  {
    "image": "assets/nvidia.png",
    "title": "NVDA",
    "subtitle": "Nvidia",
    "percentage": "↑ 8.49%",
    "price": "\$561.48",
    "text": "42.49"
  }
];
