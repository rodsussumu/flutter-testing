import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomSelect extends StatefulWidget {
  String selectName;
  String selectController;
  List listOptions;
  CustomSelect(
      {Key? key,
      required this.selectName,
      required this.listOptions,
      required this.selectController})
      : super(key: key);

  @override
  State<CustomSelect> createState() => _CustomSelectState();
}

class _CustomSelectState extends State<CustomSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.widget.selectName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        InputDecorator(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
              border: InputBorder.none,
            ),
            isEmpty: this.widget.selectController == null ||
                this.widget.selectController == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: this.widget.selectController,
                isDense: true,
                onChanged: (value) {
                  setState(() {
                    this.widget.selectController = value.toString();
                  });
                },
                items: this.widget.listOptions.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ))
      ],
    );
  }
}
