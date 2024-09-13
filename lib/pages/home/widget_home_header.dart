import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/page_message_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeaderWidget extends StatelessWidget {
  final Color? bgColor;
  const HomeHeaderWidget({super.key, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 45,
            height: 31.9,
            child: Image.asset(FlutterPetImgConstant.homeLogo),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: 16,
            height: 16,
            child: Image.asset(FlutterPetImgConstant.homeLocation),
          ),
          Text(
            "Guangzhou",
            style: GoogleFonts.inter(
              fontSize: 14,
              color: ThemeColor.colorFF101010,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 6.64,
            height: 3.32,
            child: Image.asset(FlutterPetImgConstant.homeArrowDown),
          ),
          const Spacer(),
          SizedBox(
            width: 36,
            height: 36,
            child: Image.asset(FlutterPetImgConstant.homeSearch),
          ),
          const SizedBox(
            width: 4,
          ),
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
            child: SizedBox(
              width: 36,
              height: 36,
              child: Image.asset(FlutterPetImgConstant.homeNotice),
            ),
          ),
        ],
      ),
    );
  }
}
