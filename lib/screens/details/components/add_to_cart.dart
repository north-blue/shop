import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_basic_app/constants.dart';

import '../../../model/Product.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        //27
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add_shopping_cart,
                color: kTextColor,
              ),
              
              
              //SvgPicture.asset( "assets/icon/add_to_cart.svg", color: product.color, ),
              onPressed: () {
                print("add to cart");
              },
            ),
          ),


             Expanded(
            child: Container(
               width: MediaQuery.of(context).size.width - 70,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 82, 57, 57),   //product.color, error
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(18),
                                    ),
                                  ),
          
              child: InkWell(
                onTap: () {},
                child: Text(
                      "Buy Now".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
          
          
          
                
          
          
              ),
            ),
          ),





        ],
      ),
    );
  }
}
