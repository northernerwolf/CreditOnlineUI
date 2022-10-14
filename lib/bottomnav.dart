import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kamil_ulgam/aboutpage.dart';
import 'package:kamil_ulgam/homepage.dart';
import 'package:kamil_ulgam/profilpage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> screens = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      screens.add(const HomePage());
      screens.add(const AboutPage());
      screens.add(const ProfilPage());
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: BottomNavigationBar(
              elevation: 0,
              selectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              unselectedFontSize: 12,
              unselectedItemColor: const Color(0xffC8C8C8),
              unselectedLabelStyle: const TextStyle(fontFamily: "ProximaBlack"),
              selectedLabelStyle: const TextStyle(fontFamily: "ProximaBlack"),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Visibility(
                        visible: _selectedIndex == 0,
                        child: Container(
                          height: 2,
                          width: 35,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset('lib/icons/iconzaymy.svg',
                          color: _selectedIndex == 0
                              ? const Color(0xffFFCC00)
                              : null),
                    ],
                  ),
                  label: 'Займы',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Visibility(
                        visible: _selectedIndex == 1,
                        child: Container(
                          height: 2,
                          width: 35,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset('lib/icons/iconkarty.svg',
                          color: _selectedIndex == 1
                              ? const Color(0xffFFCC00)
                              : null),
                    ],
                  ),
                  label: 'Карты',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Visibility(
                        visible: _selectedIndex == 2,
                        child: Container(
                          height: 2,
                          width: 35,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      SvgPicture.asset('lib/icons/iconkredit.svg',
                          color: _selectedIndex == 2
                              ? const Color(0xffFFCC00)
                              : null),
                    ],
                  ),
                  label: 'Кредиты',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
