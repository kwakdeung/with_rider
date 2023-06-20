import 'package:flutter/material.dart';
import 'package:with_rider/profile.dart';

import 'delivery_completion_details.dart';
import 'register_shipping_method.dart';
import 'select_delivery_area.dart';
import 'service_guide.dart';
import 'set_order_notification_scope.dart';
import 'account_management.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff162d4a),
      width: MediaQuery.of(context).size.width * 0.85,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ),
                Text(
                  '우숙경 님, 반갑습니다.',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              '배송완료 내역',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const DeliveryCompletionDetails()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '계좌관리',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const AccountManagement()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '서비스안내',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const ServiceGuide()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '프로필',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => Profile()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '배송수단 변경',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => RegisterShippingMethod()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '배송지역 변경',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => SelectDeliveryArea()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              '주문 알림 반경 설정',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => SetOrderNotificationScope()),
                ),
              );
            },
          ),
          Container(height: 40),
          ListTile(
            title: RichText(
              text: TextSpan(
                text: '고객센터\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                  WidgetSpan(
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  TextSpan(
                    text: ' 02-123-4567 | ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  WidgetSpan(
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  TextSpan(
                    text: ' customer@with.kr',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              '회사명 주식회사 위드\n대표자 김가빈\n소재지 서울 강남구 OOOO OOOO\n사업자등록번호 000-00-00000\n통신판매업신고 제 0000-서울강남-00000호\n화물자동차운송주선사업허가 제00000000호\n\n\ncopyright with co., Ltd. All rights Reserved.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
