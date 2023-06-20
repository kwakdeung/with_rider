import 'package:flutter/material.dart';

import 'end_drawer.dart';
import 'shipping.dart';

class AccountManagement extends StatefulWidget {
  const AccountManagement({super.key});

  @override
  State<AccountManagement> createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
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
                '계좌관리',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 40, 30, 20),
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '은행',
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
                    bottom: 0,
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '계좌번호',
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
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '예금주명',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 1.5),
                ),
              ),
            ),
          ),
          Spacer(),
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
