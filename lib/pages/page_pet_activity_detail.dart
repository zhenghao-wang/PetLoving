import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/pages/page_pet_activity.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';

class PetActivityDetailPage extends StatefulWidget {
  final PetActivityBean data;

  const PetActivityDetailPage({super.key, required this.data});

  @override
  State<PetActivityDetailPage> createState() => _PetActivityDetailPageState();
}

class _PetActivityDetailPageState extends State<PetActivityDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2D0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          MyImageWidget(
            url: widget.data.petInfo.avatar,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: SizedBox(
                  height: 8,
                  child: LinearProgressIndicator(
                    value: widget.data.progress / 100,
                    backgroundColor: const Color(0xFFF2F2F2),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        ThemeColor.themeYellow),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.data.desc,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: ThemeColor.themeSubText2Color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
