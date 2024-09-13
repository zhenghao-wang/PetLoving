import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_pet/constants/data_center.dart';

class PetDetailPage extends StatefulWidget {
  final PetBean data;

  const PetDetailPage({super.key, required this.data});

  @override
  State<PetDetailPage> createState() => _PetDetailPageState();
}

class _PetDetailPageState extends State<PetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              color: ThemeColor.themeYellow,
              height: MediaQuery.of(context).padding.top + 303 + 32),
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 308,
                            height: 303,
                            child: MyImageWidget(
                              fit: BoxFit.contain,
                              url: widget.data.avatar,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(0, -62),
                      child: Column(
                        children: [
                          IntrinsicHeight(
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(top: 57),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      topRight: Radius.circular(32),
                                    ),
                                  ),
                                  width: double.infinity,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: const Color(0xCCFFFFFF),
                                    borderRadius: BorderRadius.circular(26.67),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x0D000000),
                                        blurRadius: 43.78,
                                        offset: Offset(0, 5.47),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.data.name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                fontSize: 24,
                                                color: ThemeColor
                                                    .themeMainTextColor,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              widget.data.attr,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                fontSize: 17,
                                                color: ThemeColor
                                                    .themeSubTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 41.6,
                                        height: 41.6,
                                        decoration: BoxDecoration(
                                          color: ThemeColor.themeYellow,
                                          borderRadius:
                                              BorderRadius.circular(8.76),
                                        ),
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                AspectRatio(
                                  aspectRatio: 343 / 40,
                                  child: Image.asset(
                                    FlutterPetImgConstant.petDetail1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                SizedBox(
                                  width: 72,
                                  height: 21,
                                  child: Image.asset(
                                    FlutterPetImgConstant.petDetail2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  widget.data.story,
                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    color: ThemeColor.themeSubText2Color,
                                  ),
                                ),
                                const SizedBox(
                                  height: 27,
                                ),
                                SizedBox(
                                  width: 72,
                                  height: 21,
                                  child: Image.asset(
                                    FlutterPetImgConstant.petDetail3,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  height: 104,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget.data.otherPets.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        width: 104,
                                        height: 88,
                                        child: MyImageWidget(
                                          url: widget
                                              .data.otherPets[index].avatar,
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(
                                        width: 17,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildBottom()
            ],
          ),
          Positioned(
            left: 16,
            top: 6 + MediaQuery.of(context).padding.top,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xCCFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  width: 22,
                  height: 20,
                  child: Image.asset(
                    FlutterPetImgConstant.arrowLeftYellow,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return Container(
      padding: const EdgeInsets.all(17),
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ClipOval(
              child: MyImageWidget(url: widget.data.doctor.avatar),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.doctor.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: ThemeColor.themeMainTextColor,
                  ),
                ),
                Text(
                  widget.data.doctor.introduce,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: ThemeColor.themeSubTextColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 38,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: ThemeColor.themeYellow,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Text(
              "Contact Owner",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
