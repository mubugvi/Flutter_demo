import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_second_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/profile_icon.png',
                              width: 34, height: 34),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Winlok',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'CustomFont',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'lock88.com',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'CustomFont',
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 19, vertical: 18),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/row_bg.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/yen.png',
                                    width: 18, height: 18),
                                const SizedBox(width: 6),
                                const Text(
                                  '0.000CYN',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/bell.png',
                            width: 30,
                            height: 26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Welcome to",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'CustomFont',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Winlok Redline Exclusive",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'CustomFont',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "当前中央余额",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'CustomFont',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "¥0.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'CustomFont',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/images/hide.png',
                                width: 26,
                                height: 26,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 10),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/row_bg_blue.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/reverse.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "刷新",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'CustomFont',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(3, (index) {
                            List<String> cardTitles = ["存款", "转账", "取款"];

                            List<String> cardImages = [
                              'assets/images/card_1.png',
                              'assets/images/card_2.png',
                              'assets/images/card_3.png'
                            ];

                            return Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFD9D9D9).withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset(
                                        cardImages[index],
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        cardTitles[index],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'CustomFont',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/ic_search.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "请输入真实姓名",
                                    style: TextStyle(
                                        fontFamily: 'CustomFont',
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Ink(
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/btn_search.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: const Text(
                                    "搜索",
                                    style: TextStyle(
                                        fontFamily: 'CustomFont',
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/fire_icon.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                "电子游艺",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'CustomFont',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "更多",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'CustomFont',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 2),
                              Image.asset(
                                'assets/images/forward_drop.png',
                                width: 15,
                                height: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(3, (index) {
                            List<String> cardImages = [
                              'assets/images/one_pic.png',
                              'assets/images/two_pic.png',
                              'assets/images/three_pic.png'
                            ];

                            return Image.asset(
                              cardImages[index],
                              width: 110,
                              height: 110,
                            );
                          }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(8, (index) {
                            List<String> iconImages = [
                              'assets/images/ic_icon1.png',
                              'assets/images/ic_icon2.png',
                              'assets/images/ic_icon3.png',
                              'assets/images/ic_icon4.png',
                              'assets/images/ic_icon5.png',
                              'assets/images/ic_icon6.png',
                              'assets/images/ic_icon7.png',
                              'assets/images/ic_icon8.png',
                            ];

                            List<String> iconTexts = [
                              "",
                              "电竞",
                              "真人",
                              "电子",
                              "棋",
                              "彩票",
                              "彩票",
                              "钓鱼"
                            ];

                            return Column(
                              children: [
                                Image.asset(
                                  iconImages[index],
                                  width: index == 0 ? 40 : 35,
                                  height: index == 0 ? 40 : 35,
                                ),
                                const SizedBox(height: 4),
                                if (index == 0)
                                  Container(
                                    width: 40,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  )
                                else
                                  Text(
                                    iconTexts[index],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'CustomFont',
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            );
                          }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: List.generate(4, (index) {
                            List<String> cardTexts1 = [
                              "Saba Sports",
                              "CMD Sports",
                              "BTi Sports",
                              "Crown Sports",
                            ];
                            List<String> cardTexts2 = [
                              "H.Rebate1.2%",
                              "H.Rebate1.2%",
                              "H.Rebate1.2%",
                              "H.Rebate1.2%"
                            ];
                            List<String> imagePaths1 = [
                              "assets/images/sports_logo1.png",
                              "assets/images/sports_logo2.png",
                              "assets/images/sports_logo3.png",
                              "assets/images/sports_logo4.png",
                            ];
                            List<String> imagePaths2 = [
                              "assets/images/ft1.png",
                              "assets/images/ft2.png",
                              "assets/images/ft3.png",
                              "assets/images/ft4.png"
                            ];

                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              color: const Color(0xFF101920),
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: SizedBox(
                                height: 130,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              imagePaths1[index],
                                              width: index == 0 ? 25 : 58,
                                              height: index == 0 ? 25 : 25,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              cardTexts1[index],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'CustomFont',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 2),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                color: index == 0
                                                    ? const Color(0xFFB01C32)
                                                    : const Color(0xFF643BC9),
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                              ),
                                              child: Text(
                                                cardTexts2[index],
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'CustomFont',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                          imagePaths2[index],
                                          width: 185,
                                          height: 160,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(65),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/bottomBar.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(5, (index) {
                          List<String> imagePaths = [
                            "assets/images/bar1.png",
                            "assets/images/bar2.png",
                            "assets/images/bar3.png",
                            "assets/images/bar4.png",
                            "assets/images/bar5.png",
                          ];

                          return Image.asset(
                            imagePaths[index],
                            width: index == 0 ? 50 : 30,
                            height: index == 0 ? 51 : 30,
                            fit: BoxFit.contain,
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
