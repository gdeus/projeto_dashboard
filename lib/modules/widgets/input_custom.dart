import 'package:flutter/material.dart';

Widget InputCustom({required String label, required TextEditingController textEditingController, required double margin, required double height, required double width}){
  return Container(
    height: height,
    width: width,
    margin: EdgeInsets.all(margin),
    child: TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: label,
      ),
    ),
  );

}