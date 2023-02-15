import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tawseel/ui/widgets/default_container.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      body: Column(
        children: [
          Text(
            "اختر العنوان",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          TawseelContainer(
            child: RadioListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("محيط الهرم - الجيزه"), Text("20LE")],
              ),
              value: "adress 1",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TawseelContainer(
            child: RadioListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("محيط الدقي - وسط البلد"), Text("20LE")],
              ),
              value: "adress 2",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TawseelContainer(
            child: RadioListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("محيط كورنيش النيل  - الجيزه"), Text("20LE")],
              ),
              value: "adress 3",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RadioListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("مكان اخر")],
            ),
            value: "adress 3",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ادخل العنوان',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'تكلفه التوصيل',
              ),
            ),
          ),
          TawseelFilledButton(
            text: "إرسال",
          )
        ],
      ),
    );
  }
}
