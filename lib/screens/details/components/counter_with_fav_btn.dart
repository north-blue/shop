import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_basic_app/screens/details/components/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, //to make heart at corner
      children: [
        CartCounter(), //26
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 114, 57, 57),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            "assets/icons/heart.svg",
          ),
        ),
      ],
    );
  }
}
