import 'package:flutter/material.dart';

import 'end_drawer.dart';

class ServiceGuide extends StatelessWidget {
  const ServiceGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff162d4a),
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      endDrawer: EndDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'WITH, 청년과 노인을 잇다',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(35, 30, 30, 0),
              child: Text(
                '위드는 퀵보다 싸게\n택배보다 빠르게 배달합니다.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
