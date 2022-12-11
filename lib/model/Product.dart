import 'package:flutter/material.dart';

//4
class Product {
  final String image, title, decription;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.decription,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 235,
      size: 12,
      decription: dummyText,
      image: "assets/images/bag_1.png",
      color: Color.fromARGB(255, 61, 95, 116),
      // const Color(0xFF3D82AE)
      ),
  Product(
      id: 2,
      title: "Belt Bag ",
      price: 235,
      size: 12,
      decription: dummyText,
      image: "assets/images/bag_2.png",
      color: Color.fromARGB(255, 110, 80, 54)
      //const Color(0xFFD3A984)
      ),
  Product(
      id: 3,
      title: "Office Code",
      price: 235,
      size: 10,
      decription: dummyText,
      image: "assets/images/bag_3.png",
      color:  Color.fromARGB(255, 138, 131, 130)
      
      
      //const Color(0xFF989493)
      
      
      ),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 235,
      size: 10,
      decription: dummyText,
      image: "assets/images/bag_4.png",
      color: Color.fromARGB(255, 151, 113, 93)
      //const Color(0xFFE6B398)
      
      ),
  Product(
      id: 5,
      title: "Office Code",
      price: 235,
      size: 12,
      decription: dummyText,
      image: "assets/images/bag_5.png",
      color: Color.fromARGB(255, 146, 75, 81)
      //const Color(0xFFFB7883)
      
      ),
  Product(
      id: 6,
      title: "Office Code",
      price: 235,
      size: 12,
      decription: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE)),
];

//5
String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
