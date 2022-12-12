import 'package:apple_store/domain/constants.dart';
import 'package:apple_store/presentation/page_shop/widgets/gridview_products.dart';
import 'package:apple_store/presentation/page_shop/widgets/new_product.dart';
import 'package:apple_store/presentation/page_shop/widgets/tittle.dart';
import 'package:apple_store/presentation/page_home/widgets/appbar.dart';
import 'package:apple_store/presentation/page_shop/widgets/new_arrival.dart';
import 'package:flutter/material.dart';

class PageShop extends StatelessWidget {
  const PageShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: AppBarTop(
        tittle: 'shop',
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: HeaddingBold(
                tittle: 'Featured',
                fontsize: 30,
                colour: Theme.of(context).primaryColor,
              ),
            ),
            const NewProduct(),
            NewArrival(
                hedding: 'iPhone 14',
                content: 'Meet iPhone 14 and supersized iPhone 14 Plus.\n'
                    'With groundbreaking safety features.our\n'
                    'longest battry life ever.And even more\n'
                    'spectacular low-light shots.',
                imagelocation: 'assets/iphonewithhand.png',
                price: '90667'),
            NewArrival(
                hedding: 'iPad',
                content: 'Meet iPhone 14 and supersized iPhone 14 Plus.\n'
                    'With groundbreaking safety features.our\n'
                    'longest battry life ever.And even more\n'
                    'spectacular low-light shots.',
                imagelocation: 'assets/ipads.png',
                price: '49417'),
            const VDivider(heightt: 10),
            HeaddingBold(
                tittle: 'Shop by product',
                fontsize: 30.0,
                colour: Theme.of(context).primaryColor),
            const VDivider(heightt: 10),
            const GridViewProducts(),
            const VDivider(heightt: 10),
            NewArrival(
                hedding:
                    'Get 6 months of\nApple Music free\nwith purchase of \nAirPods,slect\nBeats products,or\nHomePod mini***.',
                imagelocation: 'assets/homepode and.png',
                price: '10000'),
            NewArrival(
                hedding: 'Make them yours.',
                content:
                    "Personalise your Ipad, AirPods and Apple\nPencil (2nd generation) with free engraving.\nOnly at Apple",
                imagelocation: 'assets/makethemyours.png',
                price: '45000'),
          ],
        ),
      ),
    );
  }
}
