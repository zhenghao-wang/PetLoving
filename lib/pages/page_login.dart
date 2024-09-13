import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/page_home.dart';
import 'package:flutter_pet/pages/page_login_method.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String _phone = "13005412570";
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                FlutterPetImgConstant.loginBg,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 68,
                    height: 68,
                    child: Image.asset(FlutterPetImgConstant.loginLogo),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    _phone,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "alijiankangti85b",
                      color: Color(0xFF101010),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: 271,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ThemeColor.themeYellow,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "Login",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) {
                            return const LoginMethodPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Login with Other Methods",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ThemeColor.themeYellow,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 8,
              right: 8,
              bottom: 30,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _checked = !_checked;
                      });
                    },
                    icon: _checked
                        ? const Icon(
                            Icons.check_circle_outline,
                            color: ThemeColor.themeYellow,
                          )
                        : const Icon(
                            Icons.circle_outlined,
                            color: Color(0xFF323233),
                          ),
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: "",
                        children: [
                          TextSpan(
                            text: "Agree to",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "alijiankangti45r",
                              color: Color(0xFF323233),
                            ),
                          ),
                          TextSpan(
                            text: "《Account Service》",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "alijiankangti45r",
                              color: ThemeColor.themeYellow,
                            ),
                          ),
                          TextSpan(
                            text: "and",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "alijiankangti45r",
                              color: Color(0xFF323233),
                            ),
                          ),
                          TextSpan(
                            text: "《Privacy Agreement》",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "alijiankangti45r",
                              color: ThemeColor.themeYellow,
                            ),
                          ),
                          TextSpan(
                            text: "and authorize access to the local number",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "alijiankangti45r",
                              color: Color(0xFF323233),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
