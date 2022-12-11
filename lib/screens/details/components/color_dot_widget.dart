import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';

class ColorDot extends StatelessWidget {
 
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
     required this.color,
    this.isSelected=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 4),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child:  DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.transparent ,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
