import 'package:apple_store/presentation/page_home/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PageBag extends StatelessWidget {
  const PageBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBarTop(
            tittle: 'Bag',
            body: ListView(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                )
              ],
            )));
  }
}
