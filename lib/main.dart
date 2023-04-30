import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
      ),
      routes: {
        '/': (context) => const InputPage(),
      },
    );
  }
}
