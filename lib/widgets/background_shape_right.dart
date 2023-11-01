import 'package:flutter/material.dart';

// ignore: must_be_immutable
class shaperight extends StatelessWidget {
  shaperight({required this.widthnum});
  final double widthnum;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: widthnum,
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
              color: Colors.red),
        ),
      ],
    );
  }
}
