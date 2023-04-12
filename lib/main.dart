// import 'package:flutter/widgets.dart';
// import 'package:flutter/services.dart';
// import 'dart:math';
// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:meeting_page3_a/const/colors.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final int maxLength = 500;
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xFFF2F2F2),
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: ImageIcon(
              AssetImage('assets/images/Back.png'),
              size: 26,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          //backgroundColor: Color(0xFFF2F2F2),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 29, 24, 0),
                  child: Column(
                    children: [
                      //제목작성
                      //
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '어떤 모임을 등록하실래요?',
                            hintStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFCED0D5),
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                          ),
                          maxLength: 25,
                        ),
                      ),
                      //카테고리선택
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton.icon(
                            icon: Image.asset('assets/images/Group166.png'),
                            label: Text(
                              '카테고리',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SUIT',
                                color: Colors.black,
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                elevation: MaterialStateProperty.all(0)
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Divider(thickness: 1,
                          height: 1,color: Color(0xFFF0F1F5)),
                      SizedBox(height: 24,),
                      //내용작성
                      //
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "모임에 대한 정보를 입력해주세요.\n\n\n\n\n\n\n\n\n",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                          ),
                          maxLength: maxLength,
                          maxLines: null,
                        ),
                      ),
                      SizedBox(height: 13,),

///////////////////////////////////


                    ],
                  ),
                ),
                Divider(thickness: 8,height: 8,color: MIXIN_BLACK_5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //태그
                              //
                              Text(
                                '태그',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          //태그 선택
                          //
                          TextButton(
                            child: Text('사람들이 모임을 더 찾기 쉽게 태그를 걸어주세요'),
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              fixedSize: Size(342, 48),
                              elevation: 0,
                              backgroundColor: MIXIN_BLACK_5,
                              foregroundColor: Color(0xFFCED0D5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: 80,),
                          //다음 버튼
                          //
                          ElevatedButton(
                            child: Text('다음'),
                            style: TextButton.styleFrom(
                              fixedSize: Size(342, 56),
                              elevation: 0,
                              backgroundColor: MIXIN_BLACK_4,
                              foregroundColor: Color(0xFFFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
