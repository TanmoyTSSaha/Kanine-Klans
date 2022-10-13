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
  late ScrollController homeScrollController;
  int featureSelectedIndex = 0;

  @override
  void initState() {
    homeScrollController = ScrollController(initialScrollOffset: 100);
    super.initState();
  }

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
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  100,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "HOME",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  1100,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "ABOUT US",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  2100,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "FEATURES",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  3100,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "MILESTONE",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  4000,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "KANNES",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  homeScrollController.position.maxScrollExtent,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              });
            },
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 60),
            ),
            child: Text(
              "CONTACT US",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: homeScrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 1000,
                  width: Get.width,
                ),
                Container(
                  width: Get.width,
                  height: 800,
                  color: const Color(0xFF151515),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 150,
                  ),
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
            ),
          ],
        ),
      ),
   ] )]),));
  }
}
