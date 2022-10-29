import 'package:fl_chart/fl_chart.dart';
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
  bool animatedOpacity = false;

  @override
  void initState() {
    homeScrollController =
        ScrollController(initialScrollOffset: Get.height * 0.1);
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
                  Get.height * 0.1,
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
                  Get.height,
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
                  Get.height * 2,
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
                  Get.height * 3,
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
                  Get.height * 4,
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
            //Home
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Image.asset(
                    "assets/images/kk_breed.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Line.png"),
                    SizedBox(height: Get.height * 0.03),
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
              ],
            ),
            //About us
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: Colors.white,
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.85,
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
                        padding:
                            EdgeInsets.symmetric(vertical: Get.height * 0.012),
                        child: Text(
                          "Kanine Klans has a unique ecosystem that allows players to \nenter any race, for minimal price or free. With this economic\nmodel, the gameplay is very competitive, however, the\nrewards are still lucrative.\nPlayers compete against many other racers to earn a top\nposition. All players inside the game earn \$KK tokens, the\nplatform's utility token.",
                          overflow: TextOverflow.ellipsis,
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
                  bottom: 0,
                  child: SizedBox(
                    height: Get.height,
                    child: Image.asset(
                      "assets/images/dog4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            //Features
            Container(
              height: Get.height,
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.075,
                vertical: Get.height * 0.1,
              ),
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: Get.height * 0.7,
                        width: Get.width * 0.3,
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
                                      animatedOpacity = true;
                                      featureSelectedIndex = index;
                                      animatedOpacity = false;
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
                                              color:
                                                  featureSelectedIndex == index
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
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color(
                                                            0xFFB40404),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: Get.height * 0.24,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xFFD9D9D9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8),
                                                      child: Text(
                                                        featureSubTitleList[
                                                                index]
                                                            .toUpperCase(),
                                                        // overflow: TextOverflow
                                                        //     .ellipsis,
                                                        style: GoogleFonts
                                                            .montserrat(
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
                                        width: Get.height * 0.036,
                                        height: Get.height * 0.012,
                                        indicator: Container(
                                          height: 12,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: featureSelectedIndex == index
                                                ? Colors.black
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                      SizedBox(
                        width: Get.width * 0.55,
                        child: Image.asset(
                          featurePictureList[featureSelectedIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    featureSubTitleList[featureSelectedIndex].toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            //Milestone
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
                padding: EdgeInsets.all(Get.height * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      width: Get.height * 1.2,
                      height: Get.height * 0.4,
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
                                    constraints: BoxConstraints(
                                      maxHeight: Get.height * 0.15,
                                      minHeight: Get.height * 0.1,
                                      maxWidth: Get.height * 0.2,
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
                                : SizedBox(
                                    height: Get.height * 0.15,
                                    width: Get.height * 0.17,
                                  ),
                            startChild: index % 2 != 0
                                ? Container(
                                    constraints: BoxConstraints(
                                      maxHeight: Get.height * 0.15,
                                      minHeight: Get.height * 0.1,
                                      maxWidth: Get.height * 0.2,
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
                                : SizedBox(
                                    height: Get.height * 0.15,
                                    width: Get.height * 0.17,
                                  ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Canidae Family NFTS
            Container(
              height: Get.height,
              width: Get.width,
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CANIDAE FAMILY NFTS",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  SizedBox(
                    height: Get.height * 0.4,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: canidaePictureList.length,
                      itemBuilder: (context, index) {
                        return OnHoverEffect(
                          child: SizedBox(
                            height: Get.height * 0.4,
                            // width: Get.width * 0.1,
                            child: Image.asset(
                              canidaePictureList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: Get.width * 0.075),
                    ),
                  ),
                ],
              ),
            ),
            //Player Revenue
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PLAYER'S REVENUE",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 48,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: const Divider(
                      thickness: 5,
                      color: Color(0xFFB40404),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.05),
                  SizedBox(
                    width: Get.width * 0.7,
                    child: Image.asset(
                      "assets/images/players_revenue.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Other X2Earn models are based on trends!".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            //Tokenomics
            Container(
              width: Get.width,
              height: Get.height,
              color: Colors.black,
              alignment: Alignment.center,
              padding: EdgeInsets.all(Get.height * 0.025),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOKENOMICS",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 64,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: Get.width,
                        height: Get.height * 0.65,
                      ),
                      SizedBox(
                        height: Get.height * 0.65,
                        width: Get.height * 0.65,
                        child: PieChart(
                          PieChartData(
                            centerSpaceRadius: Get.height * 0.3,
                            sections: [
                              PieChartSectionData(
                                value: 15,
                                showTitle: true,
                                title: "Team",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 18,
                                showTitle: true,
                                title: "Treasury",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 19,
                                showTitle: true,
                                title: "Development & P2E",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 1.5,
                                showTitle: true,
                                title: "Public sale",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 4,
                                showTitle: true,
                                title: "Partners and advisors",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 5.50,
                                showTitle: true,
                                title: "Private sale(Round 1)",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 8,
                                showTitle: true,
                                title: "Private sale(Round 2)",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 12,
                                showTitle: true,
                                title: "Marketing",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                              PieChartSectionData(
                                value: 12,
                                showTitle: true,
                                title: "Liquidity & mm",
                                radius: 8,
                                color: const Color(0xFFD80202),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.5,
                        width: Get.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          // borderRadius: BorderRadius.circular(Get.height * 0.5),
                          border: Border.all(
                            width: 3,
                            color: const Color(0xFF373737),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: Get.height * 0.35,
                        width: Get.height * 0.35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF1D1D1D),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(11, 5),
                              blurRadius: 107,
                              spreadRadius: 0,
                              color: const Color(0xFFD80202).withOpacity(0.72),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "TOTAL SUPPLY\n",
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: "1,000,000,000",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        right: Get.width * 0.25,
                        bottom: Get.height * 0.15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "15%\nTEAM",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: Get.width * 0.35,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "18%\nTREASURE",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.235,
                        bottom: Get.height * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "19%\nDEVELOPMENT & P2E",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.2325,
                        bottom: Get.height * 0.41,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.50%\nPUBLIC SALE",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.25,
                        bottom: Get.height * 0.475,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4%\nPARTNERS & ADVISORS",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.275,
                        bottom: Get.height * 0.55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5.50%\nPRIVATE SALE(ROUND 1)",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.315,
                        bottom: Get.height * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "8%\nPRIVATE SALE(ROUND 2)",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: Get.width * 0.29,
                        bottom: Get.height * 0.575,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "12%\nMARKETING",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: Get.width * 0.23,
                        bottom: Get.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "12%\nLIQUIDITY & MM",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF969696),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.1,
                              child: const Divider(
                                thickness: 3,
                                color: Color(0xFF969696),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Opacity(
                      opacity: 0.5,
                      child: SvgPicture.asset(
                        'assets/icons/logo.svg',
                        height: Get.height * 0.1,
                        width: Get.height * 0.1,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Meet the team
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
            //Meet the team
            Container(
              height: Get.height,
              width: Get.width,
              padding: EdgeInsets.all(Get.height * 0.05),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Asset_5.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(width: Get.height * 0.075),
                      ProfileIntroImage(
                        image: teamImageList[0],
                        name: teamNameList[0].toUpperCase(),
                        designation: 'CEO',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[1],
                        name: teamNameList[1].toUpperCase(),
                        designation: 'COO',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[2],
                        name: teamNameList[2].toUpperCase(),
                        designation: 'CMO',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[3],
                        name: teamNameList[3].toUpperCase(),
                        designation: 'WEB\nDEVELOPER',
                        isCover: 2,
                      ),
                      SizedBox(width: Get.height * 0.075),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ProfileIntroImage(
                        image: teamImageList[4],
                        name: teamNameList[4].toUpperCase(),
                        designation: 'CBDO',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[5],
                        name: teamNameList[5].toUpperCase(),
                        designation: '3D ARTIST',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[6],
                        name: teamNameList[6].toUpperCase(),
                        designation: 'GRAPHICS AND\nVIDEO EDITOR',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[7],
                        name: teamNameList[7].toUpperCase(),
                        designation: 'GRAPHICS\nDESIGNER',
                      ),
                      ProfileIntroImage(
                        image: teamImageList[8],
                        name: teamNameList[8].toUpperCase(),
                        designation: 'WEB\nDEVELOPER',
                        isCover: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     SizedBox(
            //       width: Get.width,
            //       child: Image.asset(
            //         "",
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     GridView.builder(
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 4,
            //       ),
            //       itemCount: teamNameList.length,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             SizedBox(
            //               height: 300,
            //               width: 225,
            //               child: Image.asset(
            //                 teamImageList[index],
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 225,
            //               child: Text(
            //                 teamNameList[index].toUpperCase(),
            //                 textAlign: TextAlign.center,
            //                 style: GoogleFonts.montserrat(
            //                   fontSize: 24,
            //                   fontWeight: FontWeight.w900,
            //                   fontStyle: FontStyle.italic,
            //                   decoration: TextDecoration.underline,
            //                   decorationColor: const Color(0xFF7D0000),
            //                   decorationThickness: 2,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             )
            //           ],
            //         );
            //       },
            //     ),
            //   ],
            // ),
            //Contact us
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
            //Contact us
            Container(
              width: Get.width,
              height: Get.width / 5,
              color: Colors.black,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.1,
                // vertical: Get.height * 0.05,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.5,
                      child: SvgPicture.asset(
                        'assets/icons/logo.svg',
                        height: Get.height * 0.2,
                        width: Get.height * 0.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Get.height * 0.06),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SvgPicture.asset("assets/icons/discord.svg"),
                        SizedBox(width: Get.height * 0.05),
                        SvgPicture.asset("assets/icons/twitter.svg"),
                        SizedBox(width: Get.height * 0.05),
                        SvgPicture.asset("assets/icons/linkedin.svg"),
                        SizedBox(width: Get.height * 0.05),
                        SvgPicture.asset("assets/icons/medium.svg"),
                        SizedBox(width: Get.height * 0.05),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(Get.height * 0.012),
                          alignment: Alignment.center,
                          child: Text(
                            "LITE PAPER",
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Privacy policy",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "© Copyright SYBO 2012 - 2022 ·",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF4D4D4D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileIntroImage extends StatelessWidget {
  final String image;
  final String name;
  final String designation;
  final int isCover;
  const ProfileIntroImage({
    Key? key,
    required this.image,
    required this.name,
    required this.designation,
    this.isCover = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 250,
          width: 175,
          child: Image.asset(
            image,
            fit: isCover == 1
                ? BoxFit.cover
                : isCover == 2
                    ? BoxFit.contain
                    : BoxFit.fill,
          ),
        ),
        Text(
          name,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              designation,
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                // decoration: TextDecoration.underline,
                // decorationColor: const Color(0xFF7D0000),
                // decorationThickness: 2,
                color: const Color(0xFF790000),
              ),
            ),
            SizedBox(width: name.trim().length * 10),
            SvgPicture.asset(
              'assets/icons/twitter.svg',
              color: const Color(0xFF55ACEE),
              height: 24,
              width: 24,
            ),
            SizedBox(width: Get.height * 0.02),
            SvgPicture.asset(
              'assets/icons/linkedin.svg',
              color: const Color(0xFF0A66C2),
              height: 24,
              width: 24,
            ),
          ],
        ),
      ],
    );
  }
}

class OnHoverEffect extends StatefulWidget {
  final Widget child;
  const OnHoverEffect({
    super.key,
    required this.child,
  });

  @override
  State<OnHoverEffect> createState() => _OnHoverEffectState();
}

class _OnHoverEffectState extends State<OnHoverEffect> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..scale(
        1.2,
        1.2,
      )
      ..translate(
        -25,
        -25,
        0,
      );
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEnter(true),
      onExit: (event) => onEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        alignment: Alignment.center,
        child: widget.child,
      ),
    );
  }

  void onEnter(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}

//This code is done by Tanmoy Saha and Durgesh Kumar Singh
