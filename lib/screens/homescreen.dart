import 'package:bmi_calculater/constants/constant.dart';
import 'package:bmi_calculater/widgets/background_shape_left.dart';
import 'package:bmi_calculater/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  double resultbmi = 0;
  String resulttext = '';
  double widthgood = 100;
  double widthbad = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'تو چنده؟ BMI',
          style: TextStyle(
              color: sormei, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                    width: 100.0,
                    child: TextField(
                      controller: weightcontroller,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          color: sormei,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'وزن',
                          hintStyle: TextStyle(
                              color: banafsheabi.withOpacity(.6),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    )),
                Container(
                    width: 150.0,
                    child: TextField(
                      controller: heightcontroller,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          color: sormei,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'قد(برحسب متر)',
                          hintStyle: TextStyle(
                              color: banafsheabi.withOpacity(.6),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    )),
              ]),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightcontroller.text);
                  final height = double.parse(heightcontroller.text);
                  setState(() {
                    resultbmi = weight / (height * height);
                    if (resultbmi > 25) {
                      widthbad = 300;
                      widthgood = 50;

                      resulttext = '!شما اضافه وزن دارید';
                    } else if (resultbmi > 18.5 && resultbmi <= 25) {
                      widthbad = 50;
                      widthgood = 300;
                      resulttext = 'وزن شما نرمال است';
                    } else {
                      widthbad = 50;
                      widthgood = 50;
                      resulttext = ' !وزن شما کمتر از نرمال است';
                      
                    }
                  });
                },
                child: Text(
                  ' ! محاسبه کن',
                  style: TextStyle(
                      color: sormei,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                ' ${resultbmi.toStringAsFixed(2)}',
                style: TextStyle(
                    color: black, fontSize: 65.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '$resulttext',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70.0,
              ),
              shaperight(widthnum: widthbad),
              SizedBox(
                height: 12.0,
              ),
              shapeleft(widthnum: widthgood),
            ],
          ),
        ),
      ),
    );
  }
}
