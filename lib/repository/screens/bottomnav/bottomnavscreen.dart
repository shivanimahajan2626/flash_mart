import 'package:flash_mart/repository/screens/cart/cartscreen.dart';
import 'package:flash_mart/repository/screens/category/categoryscreen.dart';
import 'package:flash_mart/repository/screens/home/homescreen.dart';
import 'package:flash_mart/repository/screens/print/printscreen.dart';
import 'package:flash_mart/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex= 0;
  List<Widget>pages=[
     const HomeScreen(),
     const CartScreen(),
    const CategoryScreen(),
    const PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home 1.png"),label: "Home"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),label: "Cart"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "category 1.png"),label: "Categories"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "printer 1.png"),label: "Print"),
      ],type: BottomNavigationBarType.fixed,currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex=index;
        });
      }),
    );
  }
}

