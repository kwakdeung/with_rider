import 'package:flutter/material.dart';

import 'detail_shipping_list.dart';
import 'end_drawer.dart';

class ShippingList extends StatefulWidget {
  const ShippingList({super.key});

  @override
  State<ShippingList> createState() => _ShippingListState();
}

class _ShippingListState extends State<ShippingList> {
  List<String> items = <String>["강남구", "강동구", "강북구", "강서구", "관악구"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
      ),
      endDrawer: EndDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
              child: Text(
                '[공지] 위드 서비스가 경기지역으로 확대됩니다.',
                style: TextStyle(
                  color: Color(0xff375A90),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                Text(
                  '배송 완료',
                  style: TextStyle(color: Color(0xff162d4a)),
                ),
                Spacer(),
                Text(
                  '123,456 건',
                  style: TextStyle(color: Color(0xff162d4a)),
                ),
              ],
            ),
          ),
          Container(height: 30),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const DetailShippingList()),
                        ),
                      );
                    });
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Container(width: 10),
                        Text(
                          items[index].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff162d4a)),
                        ),
                        Spacer(),
                        Text(
                          '123,456',
                          style: TextStyle(color: Color(0xff162d4a)),
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
    );
  }
}
