import 'package:flutter/material.dart';

class HeaddingBold extends StatelessWidget {
  final String tittle;
  final double fontsize;
  final Color colour;
  const HeaddingBold(
      {super.key,
      required this.tittle,
      required this.fontsize,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
          color: colour, fontSize: fontsize, fontWeight: FontWeight.w900),
    );
  }
}

class Headdingnormal extends StatelessWidget {
  final String tittle;
  final double fontsize;
  final Color colour;
  const Headdingnormal(
      {super.key,
      required this.tittle,
      required this.fontsize,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
          color: colour, fontSize: fontsize, fontWeight: FontWeight.w400),
    );
  }
}

class Contenttext extends StatelessWidget {
  final String tittle;
  final double fontsize;
  final Color colour;
  const Contenttext(
      {super.key,
      required this.tittle,
      required this.fontsize,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
        color: colour,
        fontSize: fontsize,
      ),
    );
  }
}
