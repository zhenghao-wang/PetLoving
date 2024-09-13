import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pet/constants/data_center.dart';

class PostItemWidget extends StatelessWidget {
  final PostBean data;

  const PostItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
      padding: const EdgeInsets.only(left: 11, right: 11, top: 12, bottom: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 24,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 36,
                height: 36,
                child: ClipOval(
                  child: MyImageWidget(url: data.avatar),
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
                      data.nickname,
                      style: const TextStyle(
                        fontSize: 14,
                        color: ThemeColor.colorFF101010,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'AlibabaPuHuiTi',
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child:
                              Image.asset(FlutterPetImgConstant.homeLocation2),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: Text(
                            data.location,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: ThemeColor.colorFF878787,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            data.content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: ThemeColor.colorFF101010,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: MyImageWidget(
                    url: data.imgList[0],
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: MyImageWidget(
                    url: data.imgList[1],
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: MyImageWidget(
                    url: data.imgList[2],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  data.publishTime,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: ThemeColor.colorFF878787,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
                height: 16,
                child: Image.asset(FlutterPetImgConstant.heart),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                data.likeCount,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: ThemeColor.colorFF878787,
                  fontFamily: 'AlibabaPuHuiTi',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 16,
                height: 16,
                child: Image.asset(FlutterPetImgConstant.share),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                data.shareCount,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: ThemeColor.colorFF878787,
                  fontFamily: 'AlibabaPuHuiTi',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 16,
                height: 16,
                child: Image.asset(FlutterPetImgConstant.postComment),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                data.commentCount,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: ThemeColor.colorFF878787,
                  fontFamily: 'AlibabaPuHuiTi',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
