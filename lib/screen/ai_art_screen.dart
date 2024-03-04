import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AiArtScreen extends StatelessWidget {
  const AiArtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1A1E29),
        appBar: AppBar(
          backgroundColor: const Color(0xff1A1E29),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xff0B0B13),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/images/refresh.png',
                        scale: 3.5,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Text(
                        'AI Art',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xff0B0B13),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/images/emoji-happy.png',
                        color: Colors.grey,
                        scale: 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Image.asset('assets/images/5.png'),
              const SizedBox(height: 22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Prompt',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/copy.png'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'steampunk, intricate details, mesh wire,\nmandelbrot fractal, anatomical, facial muscles,\ncable wires, microchip, badass, hyper realistic,\nultra detailed, octane render, h.r. giger style,\nvolumetric lighting',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xffC1C7C4),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/refresh.png',
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 28),
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: const Color(0xffF328BC),
                    child: Image.asset(
                      'assets/images/import.png',
                      height: 28,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 28),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/refresh.png',
                      height: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
