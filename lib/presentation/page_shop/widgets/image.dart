import 'package:apple_store/domain/productlist.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final int index;
  const ProductImage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(productDatalist[index]['frondimage']! as String),
        ),
      ),
    );
  }
}
