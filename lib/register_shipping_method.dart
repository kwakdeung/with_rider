import 'package:flutter/material.dart';

import 'select_delivery_area.dart';

class RegisterShippingMethod extends StatefulWidget {
  const RegisterShippingMethod({super.key});

  @override
  State<RegisterShippingMethod> createState() => _RegisterShippingMethodState();
}

class _RegisterShippingMethodState extends State<RegisterShippingMethod> {
  bool clickBycicle = false;
  bool clickMotorcycle = false;
  bool _isBycicleChecked = false;
  bool bycicleVisible = false;
  bool motorcycleVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 100, 30, 10),
              child: RichText(
                text: TextSpan(
                  text: '배송수단',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: '을 등록합니다.',
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
          InkWell(
            onTap: () {
              setState(() {
                clickBycicle = !clickBycicle;
                bycicleVisible = !bycicleVisible;
                clickMotorcycle = false; // 오토바이 버튼 상태 초기화
                motorcycleVisible = false; // 오토바이 버튼 상태 초기화
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: clickBycicle ? Colors.blue : Colors.grey)),
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.check,
                      color: clickBycicle ? Colors.blue : Colors.grey),
                  Container(width: 20),
                  Text(
                    '자전거',
                    style: TextStyle(
                        fontSize: 25,
                        color: clickBycicle ? Colors.blue : Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                clickMotorcycle = !clickMotorcycle;
                motorcycleVisible = !motorcycleVisible;
                clickBycicle = false; // 자전거 버튼 상태 초기화
                bycicleVisible = false; // 자전거 버튼 상태 초기화
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: clickMotorcycle ? Colors.blue : Colors.grey)),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.check,
                      color: clickMotorcycle ? Colors.blue : Colors.grey),
                  Container(width: 20),
                  Text(
                    '오토바이',
                    style: TextStyle(
                        fontSize: 25,
                        color: clickMotorcycle ? Colors.blue : Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: bycicleVisible,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 10),
                Checkbox(
                  activeColor: Colors.white,
                  checkColor: Color(0xff5589c5),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        BorderSide(width: 1.0, color: Color(0xff8d94a7)),
                  ),
                  value: _isBycicleChecked,
                  onChanged: (value) {
                    setState(() {
                      _isBycicleChecked = value!;
                    });
                  },
                ),
                Text(
                    '\n위드는 공유스쿠터, 공유자전거 및\n렌터카 사용을 금지합니다.\n사용이 금지된 이동 수단을 사용하여\n발생한 문제에 대한 책임은 전적으로\n라이더가 부담합니다.'),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Visibility(
                visible: motorcycleVisible,
                child: Container(
                  // margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '운전면허 정보를 입력해주세요.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: '운전면허번호',
                                hintStyle: TextStyle(
                                    fontSize: 20.0, color: Colors.grey[400]),
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
                            Container(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "* 11-01-123456-10 또는 서울-01-123456-10의\n형식으로 입력해주세요.\n* ' - ' 는 입력하지 않아도 됩니다.",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                hintText: '식별번호',
                                hintStyle: TextStyle(
                                    fontSize: 20.0, color: Colors.grey[400]),
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
                            Container(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "면허증 우측 작은 사진 및 5자리 또는 6자리 문자를\n입력해주세요.",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 10),
                      Row(
                        children: [
                          Container(width: 10),
                          Checkbox(
                            activeColor: Colors.white,
                            checkColor: Color(0xff5589c5),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff8d94a7)),
                            ),
                            value: _isBycicleChecked,
                            onChanged: (value) {
                              setState(() {
                                _isBycicleChecked = value!;
                              });
                            },
                          ),
                          Text('개인정보 수집 및 이용 동의'),
                        ],
                      ),
                      Row(
                        children: [
                          Container(width: 10),
                          Checkbox(
                            activeColor: Colors.white,
                            checkColor: Color(0xff5589c5),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff8d94a7)),
                            ),
                            value: _isBycicleChecked,
                            onChanged: (value) {
                              setState(() {
                                _isBycicleChecked = value!;
                              });
                            },
                          ),
                          Text('운전면허 고유식별정보 처리 동의'),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: 10),
                          Checkbox(
                            activeColor: Colors.white,
                            checkColor: Color(0xff5589c5),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                  width: 1.0, color: Color(0xff8d94a7)),
                            ),
                            value: _isBycicleChecked,
                            onChanged: (value) {
                              setState(() {
                                _isBycicleChecked = value!;
                              });
                            },
                          ),
                          Text(
                              '\n위드는 공유스쿠터, 공유자전거 및\n렌터카 사용을 금지합니다.\n사용이 금지된 이동 수단을 사용하여\n발생한 문제에 대한 책임은 전적으로\n라이더가 부담합니다.'),
                        ],
                      ),
                    ],
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
                  builder: ((context) => const SelectDeliveryArea()),
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
                  '다음',
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
