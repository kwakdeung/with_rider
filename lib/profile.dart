import 'package:flutter/material.dart';
import 'package:with_rider/shipping.dart';

import 'end_drawer.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                '프로필',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '성명',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
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
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '전화번호',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue, width: 1.5),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue, width: 1.5),
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
                                // viewTimer = true;
                                // certificationClick = true;
                              });
                              // startTimer();
                              // resetTimer();

                              // resetTimer();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
                              child: Text(
                                '변경',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '비밀번호',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue, width: 1.5),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue, width: 1.5),
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
                                // viewTimer = true;
                                // certificationClick = true;
                              });
                              // startTimer();
                              // resetTimer();

                              // resetTimer();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.fromLTRB(10, 12, 10, 0),
                              child: Text(
                                '비밀번호 재설정',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '주소(선택)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
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
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '이메일(선택)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
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
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '성별(선택)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
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
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Text(
                  '생년월일(선택)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
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
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(width: 10),
                Checkbox(
                  activeColor: Colors.white,
                  checkColor: Color(0xff5589c5),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        BorderSide(width: 1.0, color: Color(0xff8d94a7)),
                  ),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text(
                  '푸시 알림 및 이메일 마케팅 정보 수신 동의(선택)',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
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
                  color: Color(0xff5589c5),
                ),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    '정보 수정',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
