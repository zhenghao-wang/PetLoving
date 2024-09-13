import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:flutter_pet/pages/home/page_home.dart';
import 'package:flutter_pet/pages/page_register.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMethodPage extends StatefulWidget {
  const LoginMethodPage({super.key});

  @override
  State<LoginMethodPage> createState() => _LoginMethodPageState();
}

class _LoginMethodPageState extends State<LoginMethodPage> {
  bool _checked = false;
  String _phone = "";
  final TextEditingController _phoneTextEditingController =
      TextEditingController(text: "");
  final TextEditingController _codeTextEditingController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  FlutterPetImgConstant.loginBg,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          behavior: HitTestBehavior.opaque,
                          child: Container(
                            width: 32,
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:
                                Image.asset(FlutterPetImgConstant.arrowBackIos),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        width: 52,
                        height: 52,
                        child: Image.asset(FlutterPetImgConstant.loginLogo),
                      ),
                      const SizedBox(
                        height: 52,
                      ),
                      Text(
                        "PetLoving - Log In",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      _buildPhone(),
                      const SizedBox(
                        height: 16,
                      ),
                      _buildEmail(),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _checked = !_checked;
                              });
                            },
                            behavior: HitTestBehavior.opaque,
                            child: _checked
                                ? const Icon(
                                    size: 20,
                                    Icons.check_circle_outline,
                                    color: ThemeColor.themeYellow,
                                  )
                                : const Icon(
                                    size: 20,
                                    Icons.circle_outlined,
                                    color: Color(0xFF323233),
                                  ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              "I have read the User Manual and Privacy Policy.",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: const Color(0xFF323233),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(
                              builder: (context) {
                                return const HomePage();
                              },
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Container(
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
                                return const RegisterPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Go to register >",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: ThemeColor.themeYellow,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Other login methods",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: ThemeColor.colorFF969799,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(FlutterPetImgConstant.loginWx),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(FlutterPetImgConstant.loginQq),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                Image.asset(FlutterPetImgConstant.loginApple),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 47,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _buildPhone() {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Text(
            "+86",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "alijiankangti85b",
              color: ThemeColor.colorFF12033A,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 1,
            color: ThemeColor.colorFFA8A6B4,
            height: 14,
          ),
          Expanded(
            child: TextField(
              controller: _phoneTextEditingController,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "alijiankangti85b",
                color: ThemeColor.colorFF12033A,
              ),
              onChanged: (content) {
                setState(() {
                  _phone = content;
                });
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 11,
              cursorColor: ThemeColor.themeYellow,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
                counterText: "",
              ),
            ),
          ),
          Offstage(
            offstage: _phone.isEmpty,
            child: GestureDetector(
              onTap: () {
                _phoneTextEditingController.text = '';
                setState(() {
                  _phone = '';
                });
              },
              behavior: HitTestBehavior.opaque,
              child: SizedBox(
                width: 18,
                height: 18,
                child: Image.asset(FlutterPetImgConstant.clear),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildEmail() {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _codeTextEditingController,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "alijiankangti85b",
                color: ThemeColor.colorFF12033A,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]'))
              ],
              maxLength: 6,
              cursorColor: ThemeColor.themeYellow,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
                hintText: "verification code",
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  color: ThemeColor.colorFFA8A6B4,
                ),
                counterText: "",
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO:
            },
            behavior: HitTestBehavior.opaque,
            child: Container(
              width: 70,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ThemeColor.themeYellow,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                "Send",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
