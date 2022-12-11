import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';

import '../../../model/Product.dart';

class Descriptions extends StatelessWidget {
  const Descriptions({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.decription,
        style: const TextStyle(height: 1.5,
        color: backgroundColor),
      ),
    );
  }
}
