import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/widgets/widget_my_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pet/constants/data_center.dart';

class DoctorWidget extends StatelessWidget {
  final DoctorBean data;
  final bool isLast;
  final bool isFirst;

  const DoctorWidget(
      {super.key,
      required this.data,
      this.isFirst = false,
      this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isFirst ? 16 : 0),
          topRight: Radius.circular(isFirst ? 16 : 0),
          bottomLeft: Radius.circular(isLast ? 16 : 0),
          bottomRight: Radius.circular(isLast ? 16 : 0),
        ),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(
                width: 97, height: 97, child: MyImageWidget(url: data.avatar)),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   data.name,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: ThemeColor.colorFF101010,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          data.introduce,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: ThemeColor.colorFF101010,
                          ),
                        ),
                      ),
                      Container(
                        height: 28,
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ThemeColor.themeYellow,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          "Consultation",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ), // #
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xfffff7eb),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Graphic\nconsultation",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: ThemeColor.themeYellow,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xfffff7eb),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Video\nconsultation",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: ThemeColor.themeYellow,
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
      ),
    );
  }
}
