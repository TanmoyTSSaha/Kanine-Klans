import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 1,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/game.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Center(
                      child: Text("MILESTONE",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 64,
                            fontWeight: FontWeight.w900,
                          )),
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "2022 Q3",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \nPrivate Sale\n Website launch\n Start Game Development\n Gamer Community\n Development\n Teaser Launch",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "2022 Q4",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \n Strategic Partnerships\n Whitelisting & INO\n  Trailer Launch\n  Alpha & Beta Testing\n of Game",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "2023 Q1",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \n Game Launch (Phase 1)\n Marketplace Launch\n Launch NFT\n DEX Listings",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "2023 Q2",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \n CEX Listings\n  Airdrops & Rewards\n  Pro Version Development\n Starts",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "2023 Q3",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \n Infusion of Fun Features\n Teaser & Trailer Launch \n of Pro Version  of\n  Pro Version",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "2023 Q4",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " \n Game Launch (Phase 2)\n  More CEX & DEX Listings",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
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
            const SizedBox(
              height: 80,
            ),
            Container(
              height: Get.height * 1,
              width: Get.width,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "PLAYER'S REVENUE",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                 // SizedBox(height: 50,),
                  Container(
                    height: Get.height*0.90,
                    width: Get.width,
                       decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/images/players.png"),
                        fit: BoxFit.none,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
