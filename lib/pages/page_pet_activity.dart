import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/page_pet_activity_detail.dart';
import 'package:flutter_pet/pages/page_pet_map.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';

class PetActivityPage extends StatefulWidget {
  const PetActivityPage({super.key});

  @override
  State<PetActivityPage> createState() => _PetActivityPageState();
}

class _PetActivityPageState extends State<PetActivityPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "Pet activity or Pet event.",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFFFF2D0),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                children: [
                  _buildTag("All activities", 0),
                  const SizedBox(
                    width: 12,
                  ),
                  _buildTag("I participated in", 1),
                  const SizedBox(
                    width: 12,
                  ),
                  _buildTag("Local events", 2),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 17),
                itemCount: petActivityList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return PetActivityDetailPage(data: petActivityList[index]);
                          },
                        ),
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: PetActivityItem(
                      data: petActivityList[index],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String tag, int index) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (_currentIndex != index) {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      child: Column(
        children: [
          Text(
            tag,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: index == _currentIndex
                  ? ThemeColor.themeYellow
                  : ThemeColor.themeSubTextColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 10,
            height: 2.5,
            child: index == _currentIndex
                ? Image.asset(FlutterPetImgConstant.iconActivity1)
                : null,
          )
        ],
      ),
    );
  }
}

class PetActivityItem extends StatelessWidget {
  final PetActivityBean data;

  const PetActivityItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFFF4E3),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
          child: SizedBox(
            width: 186,
            height: 143,
            child: MyImageWidget(
              url: data.petInfo.avatar,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: SizedBox(
                        height: 8,
                        child: LinearProgressIndicator(
                          value: data.progress / 100,
                          backgroundColor: const Color(0xFFF2F2F2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              ThemeColor.themeYellow),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ThemeColor.themeYellow,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Text(
                      "JOIN IN",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                data.desc,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: ThemeColor.themeSubText2Color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
