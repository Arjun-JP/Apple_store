import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarTop extends StatelessWidget {
  final String tittle;
  final Widget body;

  const AppBarTop({super.key, required this.tittle, required this.body});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          centerTitle: false,
          forceElevated: true,
          stretch: false,
          floating: false,
          snap: false,
          pinned: true,
          toolbarHeight: 30,

          flexibleSpace: const FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Text(
              "sdffgfgeg",
              style: TextStyle(color: Colors.white),
            ),
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
            centerTitle: true,
            title: Text(
              "shop",
              style: TextStyle(color: Colors.white),
            ),
          ),
          expandedHeight: 100,
          collapsedHeight: 40,
          backgroundColor: Colors.black,
          // leading: Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Image.asset('assets/logo white.png'),
          // ),
          // title: Text(
          //   tittle,
          //   style: const TextStyle(
          //       color: Color.fromARGB(255, 255, 255, 255), fontSize: 35),
          // ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search))
          ],
        ),
      ],
      body: body,
    );
  }
}
