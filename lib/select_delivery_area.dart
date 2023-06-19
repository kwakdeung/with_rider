import 'package:flutter/material.dart';

import 'set_order_notification_scope.dart';

class SelectDeliveryArea extends StatefulWidget {
  const SelectDeliveryArea({super.key});

  @override
  State<SelectDeliveryArea> createState() => _SelectDeliveryAreaState();
}

class _SelectDeliveryAreaState extends State<SelectDeliveryArea> {
  List<String> items = <String>["강남구", "강동구", "강북구", "강서구", "관악구"];
  late List<bool> pressedAttentions = items.map((e) => false).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 100, 30, 10),
              child: RichText(
                text: TextSpan(
                  text: '배송지역',
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
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: Text('설정하신 지역의 배송정보를\n먼저 안내 드립니다.'),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final pressAttention = pressedAttentions[index];

                return InkWell(
                  onTap: () {
                    setState(() {
                      pressedAttentions[index] = !pressAttention;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: pressAttention ? Colors.blue : Colors.grey)),
                    margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(Icons.check,
                            color: pressAttention ? Colors.blue : Colors.grey),
                        Container(width: 20),
                        Text(
                          items[index].toString(),
                          style: TextStyle(
                              fontSize: 25,
                              color:
                                  pressAttention ? Colors.blue : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => const SetOrderNotificationScope()),
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
              '완료',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
