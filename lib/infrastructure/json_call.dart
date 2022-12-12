import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List newProduct = [];

class JsonCall extends StatefulWidget {
  const JsonCall({super.key});

  @override
  State<JsonCall> createState() => _JsonCallState();
}

class _JsonCallState extends State<JsonCall> {
  loadData() async {
    var data = await rootBundle.loadString('lib/domain/New_Product_list.json');
    setState(() {
      newProduct = jsonDecode(data);
    });
  }

  @override
  void initState() {
    loadData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
