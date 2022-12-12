import 'package:flutter/material.dart';

class VDivider extends StatelessWidget {
  final double heightt;
  const VDivider({super.key, required this.heightt});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: heightt,
    );
  }
}
