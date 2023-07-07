import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kiki_pay/theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  Image.asset(
                    'assets/images/img_onboarding_1.png',
                  ),
                  Image.asset(
                    'assets/images/img_onboarding_2.png',
                  ),
                  Image.asset(
                    'assets/images/img_onboarding_3.png',
                  )
                ],
                options: CarouselOptions(
                  height: 305,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
                carouselController: carouselController,
              ),
              const SizedBox(height: 80),
              Container(
                width: 327,
                height: 294,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 22
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Text(
                      titles[currentIndex],
                      textAlign: TextAlign.center,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold
                      ),
                    ),
                    const SizedBox(height: 26),
                    Text(
                      subtitles[currentIndex],
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular
                      ),
                    ),
                    SizedBox(height: currentIndex == 2? 38 : 50),
                    currentIndex == 2?
                    Column(
                      children: [
                        SizedBox(
                          width: 283,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56)
                              )
                            ),
                            child: Text(
                              'Get Started',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold
                              )
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign In',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: regular
                            ),
                          ),
                        )
                      ],
                    )
                        :
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 0? blueColor : bulletBackgroundColor
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 1? blueColor : bulletBackgroundColor
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 2? blueColor : bulletBackgroundColor
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              carouselController.nextPage();
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56)
                              )
                            ),
                            child: Text(
                              'Continue',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold
                              ),
                            ),
                          )
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
