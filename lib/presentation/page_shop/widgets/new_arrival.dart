import 'package:apple_store/presentation/page_shop/widgets/buy_new_arival.dart';

import 'package:apple_store/presentation/page_shop/widgets/buy_now_image.dart';
import 'package:apple_store/presentation/page_shop/widgets/tittle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewArrival extends StatelessWidget {
  final String hedding;
  final String imagelocation;
  final String price;
  String? content;
  NewArrival(
      {super.key,
      required this.hedding,
      required this.imagelocation,
      required this.price,
      this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .8,
      color: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Headdingnormal(
              tittle: 'NEW',
              fontsize: 15,
              colour: Theme.of(context).backgroundColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 15, top: MediaQuery.of(context).size.height * .05),
            child: HeaddingBold(
                tittle: hedding,
                fontsize: 30,
                colour: Theme.of(context).backgroundColor),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 15, top: MediaQuery.of(context).size.height * .11),
            child: Contenttext(
                tittle: content ?? '',
                fontsize: 15,
                colour: Theme.of(context).backgroundColor),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .222),
            child: BuyNowImage(
              image: imagelocation,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .722),
            child: BuyNewArival(price: price),
          ),
        ],
      ),
    );
  }
}
