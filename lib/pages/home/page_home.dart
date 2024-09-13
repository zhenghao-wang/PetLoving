import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/fragment_home.dart';
import 'package:flutter_pet/pages/home/fragment_tab_2.dart';
import 'package:flutter_pet/pages/home/fragment_tab_3.dart';
import 'package:flutter_pet/pages/home/fragment_tab_4.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavigationBarWidget(
        onTabClick: (index) {
          _pageController.jumpToPage(index);
        },
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          HomeFragment(),
          Tab2Fragment(),
          Tab3Fragment(),
          Tab4Fragment(),
        ],
      ),
    );
  }
}

class MyBottomNavigationBarBean {
  final String tabIcon;
  final String tabIconChecked;

  MyBottomNavigationBarBean({
    required this.tabIcon,
    required this.tabIconChecked,
  });
}

class MyBottomNavigationBarWidget extends StatefulWidget {
  final ValueChanged<int>? onTabClick;

  const MyBottomNavigationBarWidget({super.key, this.onTabClick});

  @override
  State<MyBottomNavigationBarWidget> createState() =>
      _MyBottomNavigationBarWidgetState();
}

class _MyBottomNavigationBarWidgetState
    extends State<MyBottomNavigationBarWidget> {
  final tabList = [
    MyBottomNavigationBarBean(
        tabIcon: FlutterPetImgConstant.tab1,
        tabIconChecked: FlutterPetImgConstant.tab1Checked),
    MyBottomNavigationBarBean(
        tabIcon: FlutterPetImgConstant.tab2,
        tabIconChecked: FlutterPetImgConstant.tab2Checked),
    MyBottomNavigationBarBean(
        tabIcon: FlutterPetImgConstant.tab3,
        tabIconChecked: FlutterPetImgConstant.tab3Checked),
    MyBottomNavigationBarBean(
        tabIcon: FlutterPetImgConstant.tab4,
        tabIconChecked: FlutterPetImgConstant.tab4Checked),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: ThemeColor.colorE6FFFFFF,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: _buildTabs(),
      ),
    );
  }

  List<Widget> _buildTabs() {
    List<Widget> list = [];
    for (int i = 0; i < tabList.length; i++) {
      list.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (_currentIndex != i) {
                setState(() {
                  _currentIndex = i;
                  widget.onTabClick?.call(i);
                });
              }
            },
            behavior: HitTestBehavior.opaque,
            child: Column(
              children: [
                Container(
                  width: 20,
                  height: 2,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x38FFFFFF),
                        offset: Offset(0, 1),
                        blurRadius: 3,
                      ),
                      BoxShadow(
                        color: Color(0x33FFFFFF),
                        offset: Offset(-2, -4),
                        blurRadius: 21,
                      ),
                      BoxShadow(
                        color: Color(0x4DFFBC11),
                        offset: Offset(0, 40),
                        blurRadius: 80,
                      ),
                    ],
                    color: _currentIndex == i
                        ? ThemeColor.themeYellow
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Image.asset(
                    _currentIndex == i
                        ? tabList[i].tabIconChecked
                        : tabList[i].tabIcon,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return list;
  }
}
