import 'package:flutter/material.dart';
import 'package:with_rider/sign_up.dart';

import 'register_shipping_method.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
      MaterialState.focused,
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.orange;
    }
    return Colors.pink;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(30, 180, 30, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '전화번호',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '비밀번호',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Text(
                  '비밀번호를 잊으셨나요?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const RegisterShippingMethod()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff8d94a7),
              ),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(width: 10),
              Checkbox(
                activeColor: Colors.white,
                checkColor: Color(0xff5589c5),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Color(0xff8d94a7)),
                ),
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              Text(
                '자동로그인',
                style: TextStyle(color: Color(0xff8d94a7)),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const SignUp()),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff5589c5))),
              margin: EdgeInsets.fromLTRB(20, 50, 20, 30),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '회원가입',
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
