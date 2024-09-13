import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/page_login.dart';
import 'package:google_fonts/google_fonts.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
              controller: _pageController,
              children: [
                _buildGuide1(
                    FlutterPetImgConstant.guide1,
                    "A vast amount of pet knowledge\nawaits you to learn.",
                    "Give the cute pet a loving home.", onTap: () {
                  _pageController.animateToPage(1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut);
                }),
                _buildGuide1(
                  FlutterPetImgConstant.guide2,
                  "Not only adoption, but also more\nprofessional knowledge",
                  "Offering professional knowledge on pet care and one-click\nbooking for veterinary services",
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIndex(_currentIndex == 0),
              const SizedBox(
                width: 8,
              ),
              _buildIndex(_currentIndex == 1),
            ],
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }

  Widget _buildIndex(bool state) {
    return Container(
      height: 8,
      width: state ? 46 : 8,
      decoration: BoxDecoration(
        color: ThemeColor.themeYellow,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildGuide1(String url, String content, String desc,
      {required GestureTapCallback onTap}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 344,
          height: 321,
          child: Image.asset(url),
        ),
        const SizedBox(
          height: 48,
        ),
        Text(
          content,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: const Color(0xFF1F2223),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 22,
        ),
        Text(
          desc,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: const Color(0xFFA8A6B4),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 24,
        ),
        GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Container(
            width: 184,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ThemeColor.themeYellow,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              "Next step",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
