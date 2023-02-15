// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../widgets/filled_button.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("تفاصيل الطلب"),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("رقم الطلب 1234"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("قيد التوصيل"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10,
                        ),
                        Text("شارع 44 - السبتيه"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.timer_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text("20/10/2022 , 11:00 AM"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("التكلفه "),
                        Text("ج.م"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.redAccent,
                    child: Icon(Icons.cancel_rounded),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text("سبب الألغاء"),
                      Text("العميل رفض الطلب"),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("تفاصيل الطلب"),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("بيتزا ايطالي"),
                      SizedBox(
                        width: 20,
                      ),
                      Text("60ج.م"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("بيتزا ايطالي"),
                      SizedBox(
                        width: 20,
                      ),
                      Text("60ج.م"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [Text("بيانات العميل")],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [Text("اسم العميل")],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [Text("احمد محمد")],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("اتصال بالعميل"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.call)
                          ],
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
