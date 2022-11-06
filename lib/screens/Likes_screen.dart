// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'likes_smooth.dart/page1.dart';
import 'likes_smooth.dart/page2.dart';
import 'likes_smooth.dart/page3.dart';
import 'likes_smooth.dart/page4.dart';

// ignore: camel_case_types
class Likes_Screen extends StatelessWidget {
  final _controller = PageController();

  Likes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff065D58),
        title: const Text("News Portal"),
      ),
      backgroundColor: const Color(0xffcae0df),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const JumpingDotEffect(
              activeDotColor: Color(0xff06635c),
              dotColor: Color(0xff679c98),
              dotHeight: 20,
              dotWidth: 20,
              spacing: 12,
              //verticalOffset: 50,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
