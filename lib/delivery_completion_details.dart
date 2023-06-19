import 'package:flutter/material.dart';

import 'end_drawer.dart';
import 'order_details_check.dart';
import 'shipping.dart';

class DeliveryCompletionDetails extends StatefulWidget {
  const DeliveryCompletionDetails({super.key});

  @override
  State<DeliveryCompletionDetails> createState() =>
      _DeliveryCompletionDetailsState();
}

class _DeliveryCompletionDetailsState extends State<DeliveryCompletionDetails> {
  List<String> orderNumber = <String>["abc1234567", "abc1234568"];
  List<String> deliveryDate = <String>["2023-04-17 13:00", "2023-04-18 13:00"];
  List<String> shippingCost = <String>["9,800", "19,800"];
  List<String> depositStatus = <String>["정산대기", "정산완료"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff162d4a),
      ),
      endDrawer: EndDrawer(),
      body: Column(
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
                          builder: ((context) => const Shipping()),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              Text(
                '배송완료 내역',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: orderNumber.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const OrderDetailsCheck()),
                        ),
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 2, 20, 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 30),
                        Text(
                          '주문번호 ' + orderNumber[index].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(height: 5),
                        Divider(
                          height: 1,
                          color: Colors.blue,
                          thickness: 1.5,
                        ),
                        Container(height: 5),
                        Row(
                          children: [
                            Expanded(child: Text('배송일자')),
                            Expanded(
                                child: Text(deliveryDate[index].toString())),
                          ],
                        ),
                        Container(height: 5),
                        Row(
                          children: [
                            Expanded(child: Text('배송비용')),
                            Expanded(
                                child:
                                    Text(shippingCost[index].toString() + '원')),
                          ],
                        ),
                        Container(height: 5),
                        Row(
                          children: [
                            Expanded(child: Text('입금여부')),
                            Expanded(
                                child: Text(depositStatus[index].toString())),
                          ],
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
