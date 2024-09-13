import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/widget_doctor.dart';
import 'package:flutter_pet/pages/home/widget_home_header.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/pages/page_pet_map.dart';

class Tab3Fragment extends StatefulWidget {
  const Tab3Fragment({super.key});

  @override
  State<Tab3Fragment> createState() => _Tab3FragmentState();
}

class _Tab3FragmentState extends State<Tab3Fragment> {
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
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          const _HeaderWidget(),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder: (context) {
                                          return  const PetMapPage();
                                        },
                                      ),
                                    );
                                  },
                                  behavior: HitTestBehavior.opaque,
                                  child: Image.asset(
                                    FlutterPetImgConstant.iconTab3Card1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Image.asset(
                                  FlutterPetImgConstant.iconTab3Card2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          AspectRatio(
                            aspectRatio: 346.0 / 100,
                            child: Image.asset(
                              FlutterPetImgConstant.iconTab3Card3,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return DoctorWidget(
                          data: doctorList[index],
                          isFirst: index == 0,
                          isLast: index == doctorList.length - 1,
                        );
                      },
                      childCount: doctorList.length,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
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
          _buildItem(FlutterPetImgConstant.iconTab3Item1),
          _buildItem(FlutterPetImgConstant.iconTab3Item2),
          _buildItem(FlutterPetImgConstant.iconTab3Item3),
          _buildItem(FlutterPetImgConstant.iconTab3Item4),
        ],
      ),
    );
  }

  Widget _buildItem(String icon) {
    return Image.asset(
      icon,
      fit: BoxFit.cover,
    );
  }
}
