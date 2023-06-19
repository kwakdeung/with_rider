import 'package:flutter/material.dart';

import 'information_registration_completion.dart';

class SetOrderNotificationScope extends StatefulWidget {
  const SetOrderNotificationScope({super.key});

  @override
  State<SetOrderNotificationScope> createState() =>
      _SetOrderNotificationScopeState();
}

class _SetOrderNotificationScopeState extends State<SetOrderNotificationScope> {
  List<String> items = <String>["1km 이내", "3km 이내", "5km 이내", "10km 이내"];
  bool clickBycicle = false;
  int? tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                  text: '배송반경',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: '을 설정합니다.',
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
              child: Text('설정하신 반경을 기준으로 배송 정보를 안내\n드립니다.')),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      tappedIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: tappedIndex == index
                                ? Colors.blue
                                : Colors.grey)),
                    margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Icon(Icons.check,
                            color: tappedIndex == index
                                ? Colors.blue
                                : Colors.grey),
                        Container(width: 20),
                        Text(
                          items[index].toString(),
                          style: TextStyle(
                              fontSize: 25,
                              color: tappedIndex == index
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) =>
                      const InformationRegistrationCompletion()),
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
        ],
      ),
    );
  }
}
