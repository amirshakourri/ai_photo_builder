import 'package:flutter/material.dart';
import 'package:ghazale/screen/ai_art_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({super.key});

  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  final List<String> suggestionsNames = [
    'Octane render',
    'Cyberpunk',
    'Spirit',
    'Rider wear a helmet'
  ];

  final List<String> imagesStyleUrl = [
    'assets/images/anime.png',
    'assets/images/isometric.png',
    'assets/images/character.png',
    'assets/images/abstract.png',
    'assets/images/enhanced.png',
    'assets/images/3d.png',
    'assets/images/advanced.png',
  ];
  final List<String> imagesStyleName = [
    'Anime',
    'Isometric',
    'Character',
    'Abstract',
    'Enhanced',
    '3D',
    'Advandced',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1E29),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1E29),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            //! top appbar
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
                      'assets/images/setting.png',
                      scale: 3.5,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    child: Text(
                      'Generator',
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
                      'assets/images/info-circle.png',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: const Color(0xff0B0B13),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your Prompt',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Type anything + details + dream your art',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color(0xff606068),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggestions',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xffA6A6AE),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: suggestionsNames.length,
                    itemBuilder: (context, index) => SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(suggestionsNames[index],
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 13,
                                color: Color(0xff606068),
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Select a style',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 400,
              child: GridView.builder(
                physics: const FixedExtentScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 130,
                ),
                scrollDirection: Axis.vertical,
                itemCount: imagesStyleUrl.length,
                itemBuilder: (context, index) => SizedBox(
                  height: 140,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagesStyleUrl[index],
                          width: 95,
                          height: 95,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        imagesStyleName[index],
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  backgroundColor: const Color(0xffFC27BD),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AiArtScreen(),
                    ),
                  );
                },
                child: Text(
                  'Create',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
