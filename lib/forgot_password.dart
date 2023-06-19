import 'package:flutter/material.dart';

import 'end_drawer.dart';
import 'login.dart';
import 'password_reset.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const Login()),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              Text(
                '비밀번호 찾기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Text(
                '가입한 이메일주소를 입력해주세요. 비밀번호 재설정을 위한 이메일 보내드리겠습니다.\n\n* 대소문자에 유의하여 주시기 바랍니다\n* 가입한 이메일 주소를 잊어버렸다면, 회사 내 관리자에게 문의하시기 바랍니다'),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '이메일',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                ),
              )),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PasswordReset()),
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
                  '비밀번호 재설정하기',
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
