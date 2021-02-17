import 'package:flutter/material.dart';

class ButtomMenu extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;

  const ButtomMenu({Key key, this.textColor, this.backgroundColor, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      elevation: 3,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Text(
          "$text",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
