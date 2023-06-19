import 'package:flutter/material.dart';

import 'end_drawer.dart';

class Shipping extends StatelessWidget {
  const Shipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
      ),
      endDrawer: EndDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: ((context) => const Login()),
              //   ),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff5589c5),
              ),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '배송 접수하기',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff5589c5))),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '배송현황 확인',
                  style: TextStyle(color: Color(0xff5589c5), fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
