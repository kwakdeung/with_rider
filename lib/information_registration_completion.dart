import 'package:flutter/material.dart';
import 'package:with_rider/shipping_list.dart';

class InformationRegistrationCompletion extends StatelessWidget {
  const InformationRegistrationCompletion({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const ShippingList()),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: RichText(
              text: TextSpan(
                text: '위드 라이더 등록',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: '이\n완료 되었습니다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
