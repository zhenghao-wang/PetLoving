import 'package:flutter/material.dart';
import 'package:flutter_pet/pages/page_guide.dart';
import 'package:flutter_pet/pages/page_login.dart';
import 'package:flutter_pet/pages/page_splash.dart';
import 'package:flutter_pet/provider/provider_user.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GuidePage(),
    );
  }
}
