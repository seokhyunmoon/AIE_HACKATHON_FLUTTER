import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MajorInputPage extends StatefulWidget {
  const MajorInputPage({super.key});

  @override
  State<MajorInputPage> createState() => _MajorInputPage();
}

class _MajorInputPage extends State<MajorInputPage> {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Major Input",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: TextEditingController(),
            obscureText: false,
            textAlign: TextAlign.start,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 14,
              color: Color(0xff000000),
            ),
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Color(0xff000000), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Color(0xff000000), width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Color(0xff000000), width: 1),
              ),
              hintText: "이름",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              filled: true,
              fillColor: Color(0xfff2f2f3),
              isDense: false,
              contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
            ),
          ),

          Container(
            width: 130,
            height: 50,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(0),
            ),
            child: DropdownButton(
              value: "응용정보공학",
              items: ["응용정보공학", "바이오생활공학", "국제통상", "문화미디어", "한국어언어문화"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              elevation: 8,
              isExpanded: true,
            ),
          ),

          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "남은 확점 확인하기!",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 300,
          ),
        ],
      ),
    );
  }
}