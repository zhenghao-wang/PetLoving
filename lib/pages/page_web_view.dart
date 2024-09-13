import 'package:flutter/material.dart';
import 'package:flutter_pet/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  String _pageTitle = "";

  final ValueNotifier<int> _progressValueNotifier = ValueNotifier(0);

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) {
            _progressValueNotifier.value = progress;
          },
          onPageFinished: (String url) async {
            try {
              var title = await controller.getTitle();
              setState(() {
                _pageTitle = title ?? '';
              });
            } catch (e) {
              debugPrint("$e");
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text(
          _pageTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.inter(
            fontSize: 18,
            color: ThemeColor.themeMainTextColor,
          ),
        ),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: _progressValueNotifier,
              builder: (context, value, child) {
                if (value >= 100 || value <= 0) {
                  return const SizedBox.shrink();
                }
                return SizedBox(
                  height: 4,
                  child: LinearProgressIndicator(
                    value: value / 100,
                    backgroundColor: const Color(0xFFF2F2F2),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        ThemeColor.themeYellow),
                  ),
                );
              }),
          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
