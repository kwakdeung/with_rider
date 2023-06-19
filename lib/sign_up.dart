import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'register_shipping_method.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;
  bool certificationClick = false;
  bool viewTimer = false;
  int _secondsRemaining = 300;
  bool _isActive = false;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    if (_isActive) {
      return; // 이미 타이머가 실행 중이면 중복 실행하지 않음
    }

    setState(() {
      _isActive = true;
    });

    DateTime startTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        final currentTime = DateTime.now();
        final elapsedSeconds = currentTime.difference(startTime).inSeconds;
        _secondsRemaining = 300 - elapsedSeconds;

        if (_secondsRemaining <= 0) {
          timer.cancel();
          _isActive = false;
        }
      });
    });
  }

  void resetTimer() {
    _timer?.cancel();
    setState(() {
      _secondsRemaining = 300;
      _isActive = false;
    });
    if (_isActive) {
      return; // 이미 타이머가 실행 중이면 중복 실행하지 않음
    }

    setState(() {
      _isActive = true;
    });

    DateTime startTime = DateTime.now();
    _timer = Timer.periodic(Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        final currentTime = DateTime.now();
        final elapsedSeconds = currentTime.difference(startTime).inSeconds;
        _secondsRemaining = 300 - elapsedSeconds;

        if (_secondsRemaining <= 0) {
          timer.cancel();
          _isActive = false;
        }
      });
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString();
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 80, 30, 10),
              child: RichText(
                text: TextSpan(
                  text: '이름',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: '과 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '전화번호',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '를\n입력해주세요.',
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
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('입력하신 번호로 인증문자가 전송됩니다.'),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '홍길동',
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
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '01012345678',
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.5),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    top: 0,
                    bottom: 8,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          viewTimer = true;
                          certificationClick = true;
                        });
                        // startTimer();
                        // resetTimer();

                        resetTimer();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff5589c5),
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
                        child: Text(
                          certificationClick ? '재전송' : '인증',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Visibility(
              visible: viewTimer,
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '인증번호',
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.5),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    top: 15,
                    bottom: 0,
                    child: Text(
                      formatTime(_secondsRemaining),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Text(
                  //   formatTime(_secondsRemaining),
                  //   style: TextStyle(fontSize: 72),
                  // ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: viewTimer,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Text(
                  '인증번호를 01012345678로 발송했습니다.',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Text(
                  "* 5분 이내에 인증번호를 입력하셔야 합니다.\n* SMS가 도착하지 않았거나 입력시간이 초과된 경우\n   '재전송' 버튼을 눌러주세요.\n* SMS 전송은 5회까지 가능합니다.",
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                )),
          ),
          Spacer(),
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
              RichText(
                text: TextSpan(
                  text: '위드 서비스 라이더 등록 ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                        text: '이용약관',
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms of Service"');
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                                    child: AlertDialog(
                                      title: Text(
                                        '이용약관',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Text(
                                            'This is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.\nThis is the content of the dialog.'),
                                      ),
                                      actions: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xff5589c5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            padding: EdgeInsets.fromLTRB(
                                                20, 10, 20, 10),
                                            child: Text(
                                              '닫기',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          }),
                    TextSpan(
                      text: '에 동의합니다.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
              margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  '확인',
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
