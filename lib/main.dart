import 'dart:convert';
import 'package:apple_store/domain/util.dart';
import 'package:apple_store/presentation/page_home/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

List productData = [];
void main() async {
  runApp(const AppleStore());
}

class AppleStore extends StatefulWidget {
  const AppleStore({super.key});

  @override
  State<AppleStore> createState() => _AppleStoreState();
}

class _AppleStoreState extends State<AppleStore> {
  Future loadData() async {
    final data = await rootBundle.loadString('assets/New_Product_list.json');
    if (data.isNotEmpty) {
      setState(() {
        productData = jsonDecode(data);
      });
    }
  }

  @override
  initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: ColorData.white,
            darkTheme: ColorData.black,
            home: const Home(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
