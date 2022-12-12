import 'package:apple_store/presentation/widgets/page_indicator.dart';
import 'package:apple_store/presentation/widgets/select_color.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red,
                  );
                })),
          ),
          PageIndicatorDot(
            controller: pageController,
          ),
          const SelectColor(),
        ],
      ),
    );
  }
}
