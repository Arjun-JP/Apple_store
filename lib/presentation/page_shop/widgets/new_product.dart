import 'package:apple_store/domain/productlist.dart';
import 'package:apple_store/presentation/page_shop/screen/screen_model.dart';

import 'package:apple_store/presentation/page_shop/widgets/buy_now.dart';
import 'package:apple_store/presentation/page_shop/widgets/image.dart';
import 'package:apple_store/presentation/page_shop/widgets/tittle.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.width * .05,
          bottom: MediaQuery.of(context).size.width * .05),
      height: MediaQuery.of(context).size.height * .65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productDatalist.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductPage()),
                );
              }),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                          color: const Color.fromARGB(255, 110, 0, 0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      height: MediaQuery.of(context).size.height * .6,
                      width: MediaQuery.of(context).size.width * .75,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: HeaddingBold(
                        tittle: productDatalist[index]["name"]! as String,
                        fontsize: 25,
                        colour: Theme.of(context).primaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 45),
                    child: Contenttext(
                        tittle: productDatalist[index]['details']! as String,
                        fontsize: 14,
                        colour: Theme.of(context).primaryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .2),
                    child: ProductImage(index: index),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .5),
                    child: const BuyNow(),
                  )
                ],
              ));
        }),
      ),
    );
  }
}
