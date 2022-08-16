import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildInput(inputName, inputController) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inputName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        TextField(
          controller: inputController,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        )
      ],
    );
