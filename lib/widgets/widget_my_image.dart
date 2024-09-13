import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  final String url;
  final BoxFit? fit;

  const MyImageWidget({super.key, required this.url, this.fit});

  @override
  Widget build(BuildContext context) {
    if (url.startsWith("http")) {
      return Image.network(
        url,
        fit: fit ?? BoxFit.cover,
      );
    }
    return Image.asset(
      url,
      fit: fit ?? BoxFit.cover,
    );
  }
}
