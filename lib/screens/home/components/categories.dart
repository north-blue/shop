import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';



class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand Bags",
    "Clothing",
    "Footwear",
    "Accessories"
  ];
  
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    

    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),

    

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style:  TextStyle( 
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor, //error here was because style was in constant
              ),
            ),
            Container(
              //for the line under the text
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(
                  top: kDefaultPaddin /4), //top padding is half of default padding
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ), 
      ),
    );
  }
}
