import 'package:flutter/material.dart';

import 'end_drawer.dart';
import 'shipping_complete.dart';
import 'shipping_information_details.dart';
import 'shipping_list.dart';

class DetailShippingList extends StatefulWidget {
  const DetailShippingList({super.key});

  @override
  State<DetailShippingList> createState() => _DetailShippingListState();
}

class _DetailShippingListState extends State<DetailShippingList> {
  List<String> distance = <String>["2.1", "1.3"];
  List<String> startingPoint = <String>["고척", "잠실"];
  List<String> destination = <String>["아연", "몽촌토성역"];
  List<String> cost = <String>["9,500", "8,900"];

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
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ShippingList()),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back)),
          ),
          Row(
            children: [
              Container(width: 30),
              Expanded(child: Text('거리')),
              Spacer(),
              Expanded(child: Text('출발지')),
              Spacer(),
              Expanded(child: Text('도착지')),
              Spacer(),
              Expanded(child: Text('비용')),
              Container(width: 30),
            ],
          ),
          Container(height: 5),
          Divider(
            height: 1,
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: Colors.blue,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: startingPoint.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) =>
                              const ShippingInformationDetails()),
                        ),
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 2, 20, 2),
                    child: Column(
                      children: [
                        Container(height: 30),
                        Row(
                          children: [
                            Container(width: 10),
                            Expanded(
                              child: Text(
                                distance[index].toString() + ' km',
                                style: TextStyle(color: Color(0xff162d4a)),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Text(
                                startingPoint[index].toString(),
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff162d4a)),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Text(
                                destination[index].toString(),
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff162d4a)),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Text(
                                cost[index].toString(),
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff162d4a)),
                              ),
                            ),
                            Container(width: 10),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.blue,
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
