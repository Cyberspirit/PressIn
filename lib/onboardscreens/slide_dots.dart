import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  Color color;
  SlideDots(this.isActive, this.color);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 15 : 8,
      width: isActive ? 15 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xff718096),
        border: isActive
            ? Border.all(
                color: color,
                width: 2.0,
              )
            : Border.all(
                color: Colors.transparent,
                width: 1,
              ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
