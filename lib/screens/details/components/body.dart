//20


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_basic_app/constants.dart';
import 'package:shop_basic_app/model/Product.dart';
import 'package:shop_basic_app/screens/details/components/cart_counter.dart';
import 'package:shop_basic_app/screens/details/components/color_dot_widget.dart';
import 'package:shop_basic_app/screens/details/components/color_size.dart';
import 'package:shop_basic_app/screens/details/components/descriptions.dart';
import 'package:shop_basic_app/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //It provide us total height and width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      
      child: Column(
      
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(children: <Widget>[
              //below information containwer
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                ),
                //height: 500,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 48, 45, 45),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                //21
                //below dynamic white bg
                child: Column(children: <Widget>[
                  ColorandSize(product: product),
                  //28
                  const SizedBox(height: kDefaultPaddin/2),
                  //25 description
                  Descriptions(product: product),
                  const SizedBox(height: kDefaultPaddin / 2),
                  const CounterWithFavBtn(),
                  const SizedBox(height: kDefaultPaddin / 2),
                  AddToCart(product: product)
                ]),
              ),
              ProductTitleWithImage(product: product)
            ]),
          )
        ],
      ),
    );
  }
}

