import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/widget_home_header.dart';
import 'package:flutter_pet/pages/home/widget_post.dart';
import 'package:flutter_pet/pages/page_check_in.dart';
import 'package:flutter_pet/pages/page_pet_activity.dart';
import 'package:flutter_pet/pages/page_science.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pet/constants/data_center.dart';

class Tab2Fragment extends StatefulWidget {
  const Tab2Fragment({super.key});

  @override
  State<Tab2Fragment> createState() => _Tab2FragmentState();
}

class _Tab2FragmentState extends State<Tab2Fragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ThemeColor.colorFFFFF9EB,
        child: Column(
          children: [
            const HomeHeaderWidget(
              bgColor: Colors.white,
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          _HeaderWidget(),
                          _DogCardWidget(),
                          _SearchCategoryWidget(null)
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return PostItemWidget(data: postList2[index]);
                      },
                      childCount: postList2.length,
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

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const CheckInPage();
                    },
                  ),
                );
              },
              behavior: HitTestBehavior.opaque,
              child: _buildItem(FlutterPetImgConstant.iconCheckId)),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const SciencePage();
                    },
                  ),
                );
              },
              behavior: HitTestBehavior.opaque,
              child: _buildItem(FlutterPetImgConstant.iconScience)),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const PetActivityPage();
                  },
                ),
              );
            },
            behavior: HitTestBehavior.opaque,
            child: _buildItem(FlutterPetImgConstant.iconActivity),
          ),
          _buildItem(FlutterPetImgConstant.iconBreeding),
        ],
      ),
    );
  }

  Widget _buildItem(String icon) {
    return SizedBox(
      width: 51,
      child: AspectRatio(
        aspectRatio: 51.0 / 60.0,
        child: Image.asset(
          icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _DogCardWidget extends StatelessWidget {
  const _DogCardWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(
              width: 91,
              height: 91,
              child: Image.asset(
                FlutterPetImgConstant.postDog1,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "#Daily Life Of Dog Suckers~",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: ThemeColor.colorFF101010,
                    ),
                  ),
                  Text(
                    "How to dispel worries, only with the furry companions by your side, let's enjoy the precious moments brought by our pets together~",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 8,
                      color: ThemeColor.colorFF878787,
                    ),
                  ),
                  Text(
                    "Discuss 198, number of people 172.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: ThemeColor.themeYellow,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SearchCategoryWidget extends StatefulWidget {
  final ValueChanged<int>? onTabClick;

  const _SearchCategoryWidget(this.onTabClick);

  @override
  State<_SearchCategoryWidget> createState() => _SearchCategoryWidgetState();
}

class _SearchCategoryWidgetState extends State<_SearchCategoryWidget> {
  final List<String> tags = ["Country", "Dog", "Gender", "Age"];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 15, bottom: 12),
      child: Row(
        children: _buildTabs(),
      ),
    );
  }

  List<Widget> _buildTabs() {
    List<Widget> list = [];
    for (int i = 0; i < tags.length; i++) {
      list.add(
        GestureDetector(
          onTap: () {
            if (_currentIndex != i) {
              setState(() {
                _currentIndex = i;
                widget.onTabClick?.call(i);
              });
            }
          },
          behavior: HitTestBehavior.opaque,
          child: Container(
            height: 32,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _currentIndex == i ? ThemeColor.themeYellow : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: _currentIndex == i
                      ? Colors.transparent
                      : ThemeColor.colorFF969799,
                  width: 1),
            ),
            child: Text(
              tags[i],
              style: GoogleFonts.inter(
                fontSize: 12,
                color: _currentIndex == i
                    ? Colors.white
                    : ThemeColor.themeMainTextColor,
              ),
            ),
          ),
        ),
      );

      if (i != tags.length - 1) {
        list.add(
          const SizedBox(
            width: 12,
          ),
        );
      }
    }
    return list;
  }
}
