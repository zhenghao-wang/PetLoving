import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/widget_home_header.dart';
import 'package:flutter_pet/pages/home/widget_post.dart';
import 'package:flutter_pet/pages/page_message_list.dart';
import 'package:flutter_pet/pages/page_pet_knowledge_learning.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab4Fragment extends StatefulWidget {
  const Tab4Fragment({super.key});

  @override
  State<Tab4Fragment> createState() => _Tab4FragmentState();
}

class _Tab4FragmentState extends State<Tab4Fragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFF0CB),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20 + MediaQuery.of(context).padding.top,
        ),
        children: [
          Row(
            children: [
              SizedBox(
                width: 72,
                height: 72,
                child: Image.asset(
                  FlutterPetImgConstant.iconTab4User1,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chen Xiaoxi",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ThemeColor.themeMainTextColor,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            FlutterPetImgConstant.iconTab4User2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "ID:81909199",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: ThemeColor.themeSubTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: ThemeColor.themeYellow,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "Edit Personal\nInformation",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem("Favorites", "2"),
              _buildItem("consultation", "3"),
              _buildItem("Follow", "20"),
              _buildItem("Footprint or track", "2"),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) {
                          return const PetKnowledgeLearningPage();
                        },
                      ),
                    );
                  },
                  child: AspectRatio(
                    aspectRatio: 165.0 / 72.0,
                    child: Image.asset(
                      FlutterPetImgConstant.iconTab4Card1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 165.0 / 72.0,
                  child: Image.asset(
                    FlutterPetImgConstant.iconTab4Card2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 165.0 / 72.0,
                  child: Image.asset(
                    FlutterPetImgConstant.iconTab4Card3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 165.0 / 72.0,
                  child: Image.asset(
                    FlutterPetImgConstant.iconTab4Card4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _buildCard(),
        ],
      ),
    );
  }

  Widget _buildItem(String text, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            color: ThemeColor.themeMainTextColor,
            fontWeight: FontWeight.w700,
            fontFamily: 'AlibabaPuHuiTi',
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 12,
            color: ThemeColor.themeSubTextColor,
          ),
        )
      ],
    );
  }

  Widget _buildCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const MessageListPage();
                    },
                  ),
                );
              },
              behavior: HitTestBehavior.opaque,
              child: _buildCardItem(
                  FlutterPetImgConstant.iconTab4Item1, "My messages")),
          _buildCardItem(FlutterPetImgConstant.iconTab4Item2, "Coupon"),
          _buildCardItem(
              FlutterPetImgConstant.iconTab4Item3, "Customer Service Center"),
          _buildCardItem(FlutterPetImgConstant.iconTab4Item4, "Settings")
        ],
      ),
    );
  }

  Widget _buildCardItem(
    String icon,
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: ThemeColor.themeMainTextColor,
              ),
            ),
          ),
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              FlutterPetImgConstant.iconTab4Arrow,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
