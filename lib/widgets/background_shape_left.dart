import 'package:flutter/material.dart';

// ignore: must_be_immutable
class shapeleft extends StatelessWidget {
  shapeleft({required this.widthnum});
  final double widthnum;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: widthnum,
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
              color: Colors.green),
        ),
      ],
    );
  }
}
