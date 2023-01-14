import 'package:flutter/material.dart';
import 'package:shopper/src/app/ui/page/test_tampilan/test_tampilan_one.dart';
import 'package:shopper/src/app/ui/page/test_tampilan/test_tampilan_three.dart';
import 'package:shopper/src/app/ui/page/test_tampilan/test_tampilan_two.dart';
import 'package:shopper/src/app/ui/widget/navigation_drawer.dart';

class MenuNavigationBar extends StatefulWidget {
  const MenuNavigationBar({Key? key}) : super(key: key);

  @override
  State<MenuNavigationBar> createState() => _MenuNavigationBarState();
}

class _MenuNavigationBarState extends State<MenuNavigationBar> {
  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List viewWidget = [
    const TestTampilanOne(),
    const TestTampilanTwo(),
    const TestTampilanThree(),
    const TestTampilanThree(),
    const TestTampilanThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        // leading: GestureDetector(
        //   onTap: (() => const NavigationDrawer()),
        //   child: const Icon(Icons.menu)),
        title: const Text('Page title'),
        // actions: const [
        //   Icon(Icons.favorite),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     child: Icon(Icons.search),
        //   ),
        //   Icon(Icons.more_vert),
        // ],
        backgroundColor: Colors.blue,

        // backgroundColor: Colors.white,
        // elevation: 4,
        // leading: BackdropSca,
        // // leading: IconButton(
        // //   icon: const Icon(
        // //     Icons.arrow_back_ios,
        // //     color: Colors.black,
        // //   ),
        // //   onPressed: () {
        // //     Navigator.pop(context);
        // //   },
        // // ),
        // title: const Text(
        //   'Detail',
        //   style: TextStyle(color: Colors.black),
        // ),
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 8.0),
        //     child: Icon(
        //       Icons.favorite_border,
        //       color: Colors.black,
        //     ),
        //   ),
        // ],
        // centerTitle: true,
      ),
      body: viewWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_mall_rounded),
              label: 'Shopp',
              // backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout),
              label: 'Cekout',
              // backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.query_stats_rounded),
              label: 'Advance',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              // backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 43, 145, 228),
          unselectedItemColor: const Color.fromARGB(255, 87, 87, 87)),
    );
  }
}
