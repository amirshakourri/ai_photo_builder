import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ghazale/screen/generator_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      // ),
      backgroundColor: Colors.deepPurple,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff3d1150),
              Color(0xff0a0928),
            ],
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            //mainAxisAlignment: MainAxisAlignment.center,
            alignment: Alignment.center,
            children: [
              //const Spacer(),
              Positioned(
                top: 80,
                child: Text(
                  'Create your own \nmasterpiece with AI',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //const Spacer(),
              Positioned(
                top: 170,
                child: Text(
                  'One tap, and your art piece is ready !',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //const Spacer(),
              Positioned(
                bottom: 00,
                child: Image.asset(
                  'assets/images/bg.png',
                  height: 660,
                ),
              ),
              Positioned(
                right: 25,
                bottom: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GeneratorScreen(),
                        ));
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Vector7.png',
                        height: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                bottom: 25,
                child: Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xff868D89).withOpacity(0.6),
                      borderRadius: const BorderRadius.all(Radius.circular(22))
                      //shape: BoxShape.circle,
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Container(
                                width: 5,
                                height: 5,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      '',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 5,
                                height: 5,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
