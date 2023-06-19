import 'package:flutter/material.dart';

import 'shipping.dart';

class ShippingComplete extends StatelessWidget {
  const ShippingComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 80, 30, 10),
              child: RichText(
                text: TextSpan(
                  text: '배송을 완료하였습니다.',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Shipping()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '닫기',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
