import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/pages/page_pet_detail.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';

class PetKnowledgeLearningPage extends StatefulWidget {
  const PetKnowledgeLearningPage({super.key});

  @override
  State<PetKnowledgeLearningPage> createState() =>
      _PetKnowledgeLearningPageState();
}

class _PetKnowledgeLearningPageState extends State<PetKnowledgeLearningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "Post for Adoption",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFF2D0),
            ],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 166.0 / 109.0,
                          child: Image.asset(
                            FlutterPetImgConstant.petKnowledgeLearning1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 166.0 / 109.0,
                          child: Image.asset(
                            FlutterPetImgConstant.petKnowledgeLearning2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  ClipRRect(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      widthFactor: 0.35,
                      child: Image.asset(
                        FlutterPetImgConstant.petKnowledgeLearning3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) {
                              return PetDetailPage(data: petList[index]);
                            },
                          ),
                        );
                      },
                      child: PetItemWidget(data: petList[index]));
                },
                childCount: petList.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                childAspectRatio: 165 / 203,
                mainAxisSpacing: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PetItemWidget extends StatelessWidget {
  final PetBean data;

  const PetItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 149 / 138,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: MyImageWidget(url: data.avatar),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            data.introduce,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 10,
              color: ThemeColor.colorFF101010,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: Image.asset(FlutterPetImgConstant.heart),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                data.likeCount,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: "alijiankangti45r",
                  color: ThemeColor.themeSubTextColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
