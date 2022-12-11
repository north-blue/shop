
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_basic_app/model/Product.dart';
import 'package:shop_basic_app/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //each product has a color
      backgroundColor: product.color,

      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar( 
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg",
        color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),
      actions:<Widget>[
         IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
          color: Colors.white,),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
          color: Colors.white,),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin / 2,)
      ],


      
    );
  }
}
