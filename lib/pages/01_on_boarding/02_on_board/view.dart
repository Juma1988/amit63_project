import 'package:app/pages/03_login/view.dart';
import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'other.dart';

//todo fix problem with filled button

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pageController = PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                AppGoto(LoginView());
              });
            },
            child: Text('skip'),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPageIndex = value;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) =>
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                AppImage(images[index]),
                SizedBox(height: 24),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: titles[index]),
                SizedBox(height: 12),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      descriptions[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF6B7280),
                      ),
                    )),
              ]),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      spacing: 16,
                      dotColor: Colors.black26,
                      activeDotColor: Colors.blue,
                    ),
                    onDotClicked: (index) => pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeIn,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: FilledButton(
                    style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(
                      Size(double.infinity, 50),
                    )),
                    child: currentPageIndex == images.length - 1
                        ? Text('Get Started')
                        : Text('Next'),
                    onPressed: () {
                      currentPageIndex == images.length - 1
                          ? AppGoto(LoginView())
                          : currentPageIndex == currentPageIndex++;
                      setState(() {
                        LoginView();
                      });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
