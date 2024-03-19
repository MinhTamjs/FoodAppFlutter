import 'package:flutter/material.dart';
import 'package:flutter_foodapp/constants/icons.dart';
import 'package:flutter_foodapp/constants/size.dart';
import 'package:flutter_foodapp/pages/featured.dart';


class Home extends StatefulWidget {
  const Home({super.key}); 

  @override
  State<Home> createState() => _MyHome();
}

class _MyHome extends State<Home> {

  int selectedIndex = 0; //Widget mặc định hiển thị

  static const List<Widget> _widgetOptions = <Widget>[
    MyWidget(),
    MyWidget(),
    MyWidget(),
    MyWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: bottomNavigationBar(selectedIndex, (index){
        setState(() {
          selectedIndex = index; //Cập nhật Widget hiển thị
        });
      }),
      
    );
  }
}

BottomNavigationBar bottomNavigationBar(int selectedIndex, void Function(int) onTapSeleted) //Thanh Navigation Bar ở dưới
{
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color.fromRGBO(248, 106, 46, 1),
    backgroundColor: Colors.white,
    elevation: 0,
    items: [
      BottomNavigationBarItem(
        activeIcon: Image.asset(navHomeIsSelected, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navHome, height:  myBottomNavigationBarItemSize,),
        label: "Trang chủ",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navOrderIsSelected, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navOrder, height:  myBottomNavigationBarItemSize,),
        label: "Giỏ hàng",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navHeartIsSelected, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navHeart, height:  myBottomNavigationBarItemSize,),
        label: "Yêu thích",
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(navUserIsSelected, height: myBottomNavigationBarItemSize,),
        icon: Image.asset(navUser, height:  myBottomNavigationBarItemSize,),
        label: "Tôi",
      ),
    ],
    currentIndex: selectedIndex,
    onTap: onTapSeleted,
  );
}