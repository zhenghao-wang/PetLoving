import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/pages/page_web_view.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';

class SciencePage extends StatefulWidget {
  const SciencePage({super.key});

  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2D0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "Science",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: petScienceList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return WebViewPage(url: petScienceList[index].url);
                    },
                  ),
                );
              },
              child: ScienceItemWidget(data: petScienceList[index]));
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          childAspectRatio: 165 / 190,
          mainAxisSpacing: 12,
        ),
      ),
    );
  }
}

class ScienceItemWidget extends StatelessWidget {
  final PetScienceBean data;

  const ScienceItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            data.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ThemeColor.colorFF101010,
            ),
          ),
        ],
      ),
    );
  }
}
