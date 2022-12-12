import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .75,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 127, 126, 126),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('From  ₹115323'),
          Container(
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
        ],
      ),
    );
  }
}
