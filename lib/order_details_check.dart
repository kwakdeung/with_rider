import 'package:flutter/material.dart';

import 'end_drawer.dart';
import 'shipping.dart';

class OrderDetailsCheck extends StatefulWidget {
  const OrderDetailsCheck({super.key});

  @override
  State<OrderDetailsCheck> createState() => _OrderDetailsCheckState();
}

class _OrderDetailsCheckState extends State<OrderDetailsCheck> {
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
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '주문내역 상세조회',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(height: 40),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           '주문번호',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Container(height: 20),
              //         Text(
              //           '예약자',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Container(height: 20),
              //         Text(
              //           '출발지',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Text(
              //           '도착지',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Container(height: 20),
              //         Text(
              //           '배송물품',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Container(height: 20),
              //         Text(
              //           '결제정보',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //         Container(height: 20),
              //         Text(
              //           '입금여부',
              //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     ),
              //     Container(height: 20),
              Table(
                // textDirection: TextDirection.rtl,
                // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                // border:TableBorder.all(width: 2.0,color: Colors.red),
                columnWidths: {1: FractionColumnWidth(.8)},
                children: [
                  TableRow(children: [
                    Container(
                        height: 30,
                        child: Text("주문번호",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(height: 30, child: Text("abc1234567")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 30,
                        child: Text("예약자",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(height: 30, child: Text("김철수")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 50,
                        child: Text("출발지",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(
                        height: 50,
                        child: Text("서울 송파구 신천동 7-18 롯데캐슬아파트 100동 700호")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 50,
                        child: Text("도착지",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(
                        height: 50, child: Text("서울 송파구 올림픽로35길 16 잠실4동주민센터")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 30,
                        child: Text("배송물품",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(height: 30, child: Text("서류")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 30,
                        child: Text("결제정보",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(height: 30, child: Text("[현금선불] 16,000원")),
                  ]),
                  TableRow(children: [
                    Container(
                        height: 30,
                        child: Text("입금여부",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(height: 30, child: Text("정산대기")),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
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
            color: Color(0xff8d94a7),
          ),
          margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              '닫기',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
