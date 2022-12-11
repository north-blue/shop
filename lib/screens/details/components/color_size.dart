import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';
import 'package:shop_basic_app/screens/details/components/color_dot_widget.dart';

import '../../../model/Product.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //23
            children: <Widget>[
              const Text("Color"),
              Row(
                children: const <Widget>[
                  ColorDot(
                    color: Color.fromARGB(255, 109, 128, 143),
                    isSelected: true,
                  ),
                  ColorDot(color: Color.fromARGB(255, 92, 70, 42),
                  isSelected: true,
                  
                  ),
                  ColorDot(color: Color(0xFFA29B9B),
                  isSelected: true,
                  
                  ),
                ],
              ),
            ],
          ),
        ),
        //24
        Expanded(
          //this will make the text expand in space
          child: RichText(
              text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              const TextSpan(
                text: "Size \n",
              ),
              TextSpan(
                text: "${product.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          )),
        )
      ],
    );
  }
}
