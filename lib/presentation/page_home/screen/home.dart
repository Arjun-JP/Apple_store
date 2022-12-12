import 'package:apple_store/presentation/page_bag/screen/page_bag.dart';
import 'package:apple_store/presentation/page_for_you/pages/page_for_you.dart';
import 'package:apple_store/presentation/page_profile/screen/page_profile.dart';
import 'package:apple_store/presentation/page_shop/screen/page_shop.dart';
import 'package:apple_store/presentation/page_home/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final pages = const [
    PageShop(),
    PageForYou(),
    PageBag(),
    PageProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: ((context, int index, _) {
            return pages[index];
          }),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
