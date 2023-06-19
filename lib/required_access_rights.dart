import 'package:flutter/material.dart';
import 'package:with_rider/login.dart';

class RequiredAccessRights extends StatefulWidget {
  const RequiredAccessRights({super.key});

  @override
  State<RequiredAccessRights> createState() => _RequiredAccessRightsState();
}

class _RequiredAccessRightsState extends State<RequiredAccessRights> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const Login()),
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.8),
          ),
          margin: EdgeInsets.fromLTRB(20, 200, 20, 200),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '필수 접근 권한',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              Text('위드 앱 이용을 위해 아래 접근권한의\n허용이 필요합니다.'),
              Spacer(),
              Text(
                '알림',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              Text('새 주문의 알림을 보내기 위해서 필요합니다.'),
              Spacer(),
              Text(
                '위치',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              Text(
                  '가까운 거리에 있는 주문을 빠르게 매칭하기\n위하여 현재 위치를 확인하고 자동 수신하기\n위해 사용합니다.'),
              Spacer(),
              Text(
                '전화',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              Text('수발신인 및 고객센터와의 원활한 연락을\n위해 사용합니다.'),
            ],
          ),
        ),
      ),
    );
  }
}
