import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanine_klans/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
        backgroundColor:Colors.black,
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
                color: Color(0xFFF5F5F5),
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
                color: Color(0xFFF5F5F5),
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
                color: Color(0xFFF5F5F5),
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
                color: Color(0xFFF5F5F5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                homeScrollController.animateTo(
                  4100,
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
                color: Color(0xFFF5F5F5),
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
                  bottom: -110,
                  child: SizedBox(
                    height: 1200,
                    child: Image.asset(
                      "assets/images/dog4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  height: 1000,
                  width: Get.width,
                ),
                Positioned(
                  right: Get.width / 6,
                  child: SizedBox(
                    height: 750,
                    child: Image.asset(
                      "assets/images/race.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FEATURES",
                        style: GoogleFonts.montserrat(
                          fontSize: 48,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 30),
                      ListView.builder(
                        itemCount: featureList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                featureSelectedIndex = index;
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                minHeight: 60,
                                maxHeight: 200,
                              ),
                              child: TimelineTile(
                                alignment: TimelineAlign.start,
                                beforeLineStyle: const LineStyle(
                                  thickness: 8,
                                  color: Color(0xFFD80202),
                                ),
                                afterLineStyle: const LineStyle(
                                  thickness: 8,
                                  color: Color(0xFFD80202),
                                ),
                                endChild: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(width: 24),
                                    Text(
                                      featureList[index],
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: featureSelectedIndex == index
                                            ? const Color(0xFFB40404)
                                            : Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 60),
                                    featureSelectedIndex == index
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                featureList[index],
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xFFB40404),
                                                ),
                                              ),
                                              Container(
                                                width: 230,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFD9D9D9),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: Text(
                                                  "Creating one of the most exciting and lucrative gameplay for players."
                                                      .toUpperCase(),
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                    height: 1.5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : const SizedBox(),
                                  ],
                                ),
                                indicatorStyle: IndicatorStyle(
                                  width: 36,
                                  height: 12,
                                  indicator: Container(
                                    height: 12,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      color: featureSelectedIndex == index
                                          ? Colors.black
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 125,
                  left: Get.width / 4,
                  right: Get.width / 4,
                  child: Text(
                    "Creating one of the most exciting and lucrative gameplay for players."
                        .toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/game.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "MILESTONE",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: Get.width / 8,
                    ),
                    SizedBox(
                      width: 1000,
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: milestoneTitle.length,
                        itemBuilder: (context, index) {
                          return TimelineTile(
                            axis: TimelineAxis.horizontal,
                            alignment: TimelineAlign.center,
                            beforeLineStyle: const LineStyle(
                              color: Colors.transparent,
                              thickness: 0,
                            ),
                            afterLineStyle: const LineStyle(
                              color: Colors.transparent,
                              thickness: 0,
                            ),
                            indicatorStyle: const IndicatorStyle(
                              color: Colors.transparent,
                              width: 0,
                              indicator: SizedBox(),
                            ),
                            hasIndicator: false,
                            endChild: index % 2 == 0
                                ? Container(
                                    constraints: const BoxConstraints(
                                      maxHeight: 150,
                                      minHeight: 100,
                                      maxWidth: 170,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          milestoneTitle[index],
                                          style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          milestoneSubTitle[index]
                                              .toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(
                                    height: 150,
                                    width: 170,
                                  ),
                            startChild: index % 2 != 0
                                ? Container(
                                    constraints: const BoxConstraints(
                                      maxHeight: 150,
                                      maxWidth: 170,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          milestoneTitle[index],
                                          style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          milestoneSubTitle[index],
                                          style: GoogleFonts.montserrat(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(
                                    height: 150,
                                    width: 170,
                                  ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: Get.height * 1,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "CANIDAE FAMILY NFTS",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: Get.height * 0.80,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/images/game-1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80, right: 280),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/card.png"),
                          Image.asset("assets/images/card.png"),
                          Image.asset("assets/images/card-2.png"),
                          Image.asset("assets/images/card.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 80,
            // ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 120,
                  child: Text(
                    "PLAYER'S REVENUE",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 48,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Image.asset(
                    "assets/images/players.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            SizedBox(
              width: Get.width,
              child: Image.asset(
                "assets/images/background_image.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 100,
              width: Get.width,
              child: Center(
                child: Text(
                  "MEET THE TEAM",
                  style: GoogleFonts.montserrat(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: Get.width,
                  child: Image.asset(
                    "assets/images/Asset_5.png",
                    fit: BoxFit.cover,
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: teamNameList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 225,
                          child: Image.asset(
                            teamImageList[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 225,
                          child: Text(
                            teamNameList[index].toUpperCase(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xFF7D0000),
                              decorationThickness: 2,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: Get.width,
              child: Center(
                child: Text(
                  "CONTACT DETAILS",
                  style: GoogleFonts.montserrat(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: Get.width,
              height: Get.width / 3,
              color: Colors.black,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/icons/linked_in.svg"),
                  SvgPicture.asset("assets/icons/instagram.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
