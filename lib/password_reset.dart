import 'package:flutter/material.dart';
import 'package:with_rider/login.dart';

import 'end_drawer.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Text(
              '비밀번호 재설정하기',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 80, 30, 20),
            child: Text('새로운 비밀번호를 입력해주세요.'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '새 비밀번호',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 20),
              child: Text('* 8자 이상이면서 최소한 숫자 하나와 글자 하나를 포함해야 합니다.')),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '새 비밀번호 확인',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 20),
              child: Text('* 비밀번호를 다시 입력해주세요.')),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Login()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff5589c5),
              ),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '재설정하기',
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
