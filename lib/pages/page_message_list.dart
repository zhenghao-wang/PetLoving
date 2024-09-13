import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:flutter_pet/constants/data_center.dart';
import 'package:flutter_pet/flutter_pet_img_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageListPage extends StatefulWidget {
  const MessageListPage({super.key});

  @override
  State<MessageListPage> createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          "My messages",
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 2),
                child: Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 103 / 91,
                        child: Image.asset(
                          FlutterPetImgConstant.iconMessageCard1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 103 / 91,
                        child: Image.asset(
                          FlutterPetImgConstant.iconMessageCard2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 103 / 91,
                        child: Image.asset(
                          FlutterPetImgConstant.iconMessageCard3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return MessageItemWidget(data: messageList[index]);
                },
                childCount: messageList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageItemWidget extends StatelessWidget {
  final MessageBean data;

  const MessageItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(
              width: 42,
              height: 42,
              child: Image.asset(
                data.icon,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data.title,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    data.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
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
