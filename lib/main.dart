import 'package:flutter/material.dart';
import 'package:ghazale/screen/home_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   textTheme: GoogleFonts.poppinsTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
