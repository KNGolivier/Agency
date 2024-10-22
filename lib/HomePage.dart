import 'package:flutter/material.dart';
import 'package:gallery/screens.dart/screens1.dart';
import 'package:gallery/screens.dart/screens2.dart';
import 'package:gallery/screens.dart/screens3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'LoginPage.dart';

class Homepage extends StatefulWidget {
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: const [
              Screens1(),
              Screens2(),
              Screens3(),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 30,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  spacing: 8.0,
                  dotWidth: 24.0,
                  radius: 12.0,
                  dotHeight: 8.0,
                  strokeWidth: 2,
                  dotColor: Colors.grey,
                  expansionFactor: 3.0,
                  activeDotColor: Color(0XFF018868)),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 30,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: Color(0XFF018868),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                ),
                onPressed: () {
                  if (currentPage < 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                },
                child: Text(
                  currentPage == 2 ? 'Get Started' : 'Next',
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
