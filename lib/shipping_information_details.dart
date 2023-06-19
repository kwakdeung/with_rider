import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_navi.dart';
import 'package:url_launcher/url_launcher.dart';

import 'detail_shipping_list.dart';
import 'end_drawer.dart';
import 'shipping_complete.dart';

class ShippingInformationDetails extends StatefulWidget {
  const ShippingInformationDetails({super.key});

  @override
  State<ShippingInformationDetails> createState() =>
      _ShippingInformationDetailsState();
}

class _ShippingInformationDetailsState
    extends State<ShippingInformationDetails> {
  final String nativeAppKey =
      "306303fa453b35de828e854d3bc01702"; // 발급받은 nativeAppKey 값 설정

  Future<void> _launchKakaoNavi() async {
    KakaoSdk.init(nativeAppKey: nativeAppKey); // Kakao SDK 초기화
    final installed =
        await NaviApi.instance.isKakaoNaviInstalled(); // 카카오내비가 설치되어 있는지 확인
    if (installed) {
      try {
        await NaviApi.instance.navigate(
          destination: Location(
              name: '카카오 판교오피스', x: '127.108640', y: '37.402111'), // 목적지 정보 입력
          viaList: [
            Location(name: '판교역 1번출구', x: '127.111492', y: '37.395225')
          ], // 경유지 정보 입력
          option: NaviOption(coordType: CoordType.wgs84),
        );
      } catch (e) {
        print('카카오내비 실행 실패: $e');
      }
    } else {
      final url = NaviApi.webNaviInstall; // 카카오내비 설치 페이지 URL
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

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
                      builder: ((context) => const DetailShippingList()),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Text(
                  '배송 거리',
                  style: TextStyle(color: Color(0xff162d4a), fontSize: 20),
                ),
                Spacer(),
                Text(
                  '1.3 km',
                  style: TextStyle(color: Color(0xff162d4a), fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: 250,
            width: double.infinity,
            child: Center(
                child: Text(
              '지도 표시',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 20),
                Text(
                  '서울 송파구 올림픽로 269',
                  style: TextStyle(color: Color(0xff162d4a), fontSize: 20),
                ),
                Container(height: 5),
                Text(
                  '잠실 롯데캐슬 골드 아파트 102동 702호',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Container(height: 50),
                Text(
                  '몽촌토성역(평화의문)',
                  style: TextStyle(color: Color(0xff162d4a), fontSize: 20),
                ),
                Container(height: 5),
                Text(
                  '4번출구 엘리베이터',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        // POINT
                        color: Color(0xff162d4a),
                        width: 0.5,
                      ),
                      right: BorderSide(
                        // POINT
                        color: Color(0xff162d4a),
                        width: 0.5,
                      ),
                      bottom: BorderSide(
                        // POINT
                        color: Colors.blue,
                        width: 1.5,
                      ),
                      left: BorderSide(
                        // POINT
                        color: Color(0xff162d4a),
                        width: 0.5,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 120, 0, 20),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  height: 40,
                  child: Row(
                    children: [
                      Text(
                        '총수입',
                        style: TextStyle(fontSize: 25),
                      ),
                      Spacer(),
                      Text(
                        '8,900원',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const DetailShippingList()),
                ),
              );
            },
            child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                color: Colors.grey,
                child: Text(
                  '다른배송',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          )),
          Expanded(
            child: InkWell(
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: ((context) => const ShippingComplete()),
                //   ),
                // );
                _launchKakaoNavi();
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                color: Colors.blue,
                child: Text('배송수락',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
