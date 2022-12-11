//7
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_basic_app/constants.dart';
import 'package:shop_basic_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //use stateless instead of staefulwidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //13 click on blub appbar and extract method
      appBar: buildAppBar(),
      body: const Body(),

      );
    
    
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 97, 96, 96),
      elevation: 0,
      leading: IconButton(
        icon:  Icon( Icons.arrow_back,
          color: kTextColor,
        ),
        
        
        //SvgPicture.asset( 'assets/icons/back.svg',),
        onPressed: () {},
      
      ),
      actions:<Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          
          
          //SvgPicture.asset('assets/icons/search.svg',color: kTextColor,),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_bag,
            color: kTextColor,
          ),
          
          //SvgPicture.asset('assets/icons/cart.svg',color: kTextColor, ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin/2)

      ],
      );
  }
  

 
}     
       

  











