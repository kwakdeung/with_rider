import 'package:flutter/material.dart';

import 'required_access_rights.dart';

class AppAdvertisement extends StatefulWidget {
  const AppAdvertisement({super.key});

  @override
  State<AppAdvertisement> createState() => _AppAdvertisementState();
}

class _AppAdvertisementState extends State<AppAdvertisement> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const RequiredAccessRights()),
        ),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff162d4a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            alignment: Alignment.center,
            child: Text(
              '위드는 퀵보다 싸게\n택배보다 빠르게 배달합니다.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
