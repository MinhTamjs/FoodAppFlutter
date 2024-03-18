import 'package:flutter/material.dart';
import 'package:flutter_foodapp/constants/icons.dart';
import 'package:flutter_foodapp/constants/size.dart';


class Home extends StatefulWidget {
  const Home({super.key}); 

  @override
  State<Home> createState() => _MyHome();
}

class _MyHome extends State<Home> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
      ),
      bottomNavigationBar: bottomNavigationBar(),
      
    );
  }
}

BottomNavigationBar bottomNavigationBar()
{
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xff6849ef),
    backgroundColor: Colors.white,
    elevation: 0,
    items: [
      BottomNavigationBarItem(
        activeIcon: Image.asset(navHome, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navHome, height:  myBottomNavigationBarItemSize,),
        label: "Home",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navOrder, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navOrder, height:  myBottomNavigationBarItemSize,),
        label: "Order",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navOrder, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navOrder, height:  myBottomNavigationBarItemSize,),
        label: "Order",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navOrder, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navOrder, height:  myBottomNavigationBarItemSize,),
        label: "Order",
      ),
    ],
  );
}