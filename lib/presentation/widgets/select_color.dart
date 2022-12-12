import 'package:apple_store/domain/productlist.dart';
import 'package:flutter/material.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return CircleAvatar(
            radius: 20,
            backgroundColor: productDatalist[index]["indexcolor1"] as Color,
          );
        },
      ),
    );
  }
}
