import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';
import 'package:shop_basic_app/model/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
             
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                  //to add zoom in type of animation for bags

                  tag: "${product.id}",
                  child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(product.title,
                style: const TextStyle(color: kTextLightColor)),
          ),
          Text(
            "\$${product.price}", //add to the sign
            // ignore: unnecessary_const
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ], //product of our demo list
      ),
    );
  }
}
