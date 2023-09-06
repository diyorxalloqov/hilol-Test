import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hilol/presentation/ui/categories/screens/boshSahifa.dart';
import 'package:hilol/presentation/ui/categories/screens/kitoblar.dart';
import 'package:hilol/presentation/ui/categories/screens/menyu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _screens = const [BoshSahifa(), Kitoblar(), Menyu()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Bosh Sahifa'.tr()),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu_book_rounded,
                size: 25,
              ),
              label: 'Kitoblar'.tr()),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                size: 25,
              ),
              label: 'Menyu'.tr()),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
