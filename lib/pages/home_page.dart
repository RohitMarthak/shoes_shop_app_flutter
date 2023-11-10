import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/pages/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentPage = value;
          setState(() {});
        },
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 35,
              ),
              label: '')
        ],
      ),
    );
  }
}
