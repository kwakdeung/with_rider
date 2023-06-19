import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MainScreen()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff5589c5),
              ),
              margin: EdgeInsets.fromLTRB(20, 350, 20, 0),
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
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff5589c5))),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 150),
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
          Spacer(),
        ],
      ),
    );
  }
}
