import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorDot extends StatelessWidget {
  final PageController controller;
  const PageIndicatorDot({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
          controller: controller, // PageController
          count: 5,
          effect: const JumpingDotEffect(
              spacing: 12,
              verticalOffset: 2,
              activeDotColor:
                  Color.fromARGB(255, 0, 53, 96)), // your preferred effect
          onDotClicked: (index) {}),
    );
  }
}
