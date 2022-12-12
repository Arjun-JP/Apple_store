import 'package:flutter/material.dart';

class BuyNewArival extends StatelessWidget {
  final String price;
  const BuyNewArival({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .078,
      color: const Color.fromARGB(255, 127, 126, 126),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('From ₹$price'),
          InkWell(
            child: Container(
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .25,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  ' BUY ',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
