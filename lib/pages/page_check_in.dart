import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckInPage extends StatefulWidget {
  const CheckInPage({super.key});

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.themeYellow,
      appBar: AppBar(
        backgroundColor: ThemeColor.themeYellow,
        foregroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "Daily check-in ",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  "Accumulated",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildNumCard("0"),
                      const SizedBox(
                        width: 3,
                      ),
                      _buildNumCard("0"),
                      const SizedBox(
                        width: 3,
                      ),
                      _buildNumCard("2"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Daily\nCheck-in",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Your consecutive login days will\nbe saved after logging in.",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFFFE9901),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 1),
                      color: Color(0x66FFFFFF),
                      blurRadius: 10),
                  BoxShadow(
                      offset: Offset(0, -1),
                      color: Color(0xFFFE7A01),
                      blurRadius: 12)
                ]),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 9,
                    right: 9,
                    top: 16,
                    bottom: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Signed in for",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: ThemeColor.themeMainTextColor,
                            ),
                          ),
                          Text(
                            "2",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 24,
                              color: ThemeColor.themeYellow,
                            ),
                          ),
                          Text(
                            "consecutive days",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: ThemeColor.themeMainTextColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Continuously check in for 7 days to receive\nan additional 20 pet coins as a reward.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: ThemeColor.themeSubText2Color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                          right: 18,
                          top: 12,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: const SizedBox(
                            height: 6,
                            child: LinearProgressIndicator(
                              value: 2 / 7,
                              backgroundColor: Color(0xFFF2F2F2),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                ThemeColor.themeYellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 9, right: 9),
                        child: Row(
                          children: [
                            _buildDay("0"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("1"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("2"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("3"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("4"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("5"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("6"),
                            const SizedBox(
                              width: 3,
                            ),
                            _buildDay("7"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 13,
                    right: 13,
                    top: 14,
                    bottom: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign-in Guidelines",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          height: 18 / 16,
                          color: ThemeColor.themeYellow,
                        ),
                      ),
                      Text(
                        "1. Invite users to enter the check-in page to check in, which can only be done once a day, and receive rewards.\n2. The check-in is based on a 7-day cycle, and a new round of check-ins will begin after 7 consecutive days.\n3. The longer the consecutive check-in days, the more rewards will be obtained. For every 3 and 7 consecutive days of check-in, a mystery gift box will be activated, granting additional rewards.",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          height: 18 / 12,
                          color: ThemeColor.themeYellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 169,
                height: 44,
                margin: const EdgeInsets.only(top: 53.0),
                decoration: BoxDecoration(
                    color: const Color(0xFFFE9506),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, -2),
                          color: Color(0xFFFE8C06),
                          blurRadius: 4),
                      BoxShadow(
                          offset: Offset(0, 4),
                          color: Color(0xFFFFDB80),
                          blurRadius: 124)
                    ]),
                child: Text(
                  "Sign In Now",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildNumCard(
    String text,
  ) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 45 / 59.0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 32,
              fontFamily: "alijiankangti85b",
              color: ThemeColor.themeYellow,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDay(String text) {
    return Expanded(
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12,
              height: 18 / 12,
              color: ThemeColor.themeSubText2Color,
            ),
          ),
          Text(
            "days",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12,
              height: 18 / 12,
              color: ThemeColor.themeSubText2Color,
            ),
          ),
        ],
      ),
    );
  }
}
