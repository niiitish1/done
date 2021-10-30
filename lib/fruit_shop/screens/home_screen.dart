import 'package:demo_1/fruit_shop/screens/rewards_screen.dart';
import 'package:flutter/material.dart';

import 'order_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/fruit_shop/images/two.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 150, 50, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderScreen()));
                  },
                  child: Image.asset(
                    "assets/fruit_shop/images/menu_one_order.png",
                    width: double.infinity,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RewardsScreen()));
                  },
                  child: Image.asset(
                    "assets/fruit_shop/images/menu_two_reward.png",
                    width: double.infinity,
                  ),
                ),
                Image.asset(
                  "assets/fruit_shop/images/menu_three_find_us.png",
                  width: double.infinity,
                ),
                Image.asset(
                  "assets/fruit_shop/images/menu_four_trading_hours.png",
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
