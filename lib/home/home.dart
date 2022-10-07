import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SvgPicture.asset(
          "assets/icons/logo.svg",
          color: Colors.white,
          height: 100,
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "HOME",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "ABOUT US",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "FEATURES",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "MILESTONE",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "KANNES",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "CONTACT US",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  width: Get.width,
                  height: 1080,
                  child: Image.asset(
                    "assets/images/kk_breed.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Line.png"),
                      const SizedBox(height: 36),
                      Text(
                        "Kanine Klans is the first-ever Canidae Family Gaming Universe with a vision\nto give its users an immersive and interactive gaming experience",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 800,
                  width: Get.width,
                ),
                Container(
                  width: Get.width,
                  height: 600,
                  color: const Color(0xFF151515),
                  padding: const EdgeInsets.all(60),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 36,
                          vertical: 12,
                        ),
                        child: Text(
                          "ABOUT US",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        width: Get.width * 0.4,
                        decoration:
                            const BoxDecoration(color: Color(0xFF9F0505)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Text(
                          "KANINE KLANS: A Canineverse Game",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Text(
                          "Kanine Klans has a unique ecosystem that allows players to \nenter any race, for minimal price or free. With this economic\nmodel, the gameplay is very competitive, however, the\nrewards are still lucrative.\nPlayers compete against many other racers to earn a top\nposition. All players inside the game earn \$KK tokens, the\nplatform's utility token.",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -100,
                  child: SizedBox(
                    height: 1050,
                    child: Image.asset(
                      "assets/images/dog4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
