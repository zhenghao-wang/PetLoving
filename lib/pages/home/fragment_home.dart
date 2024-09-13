import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/widget_home_header.dart';
import 'package:flutter_pet/pages/home/widget_post.dart';
import 'package:flutter_pet/pages/page_pet_knowledge_learning.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFF7F8F9),
            ],
          ),
        ),
        child: Column(
          children: [
            const HomeHeaderWidget(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: ThemeColor.colorFFEDEDED, width: 1),
                  borderRadius: BorderRadius.circular(18)),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 36,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(FlutterPetImgConstant.homeSearch2),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 335.0 / 120.0,
                            child: Image.asset(
                              FlutterPetImgConstant.homeCard1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 161.0 / 158.0,
                                    child: Image.asset(
                                      FlutterPetImgConstant.homeCard2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          FlutterPetImgConstant.homeCard3,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          FlutterPetImgConstant.homeCard4,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 24, bottom: 15),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Wandering post",
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                color: ThemeColor.colorFF101010,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return PostItemWidget(data: postList[index]);
                      },
                      childCount: postList.length,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
