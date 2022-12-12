import 'package:flutter/material.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 1.6,
        width: MediaQuery.of(context).size.width,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          children: const <Widget>[
            GridviewContainer(image: 'assets/menuicons/mac.png'),
            GridviewContainer(image: 'assets/menuicons/iPhone.png'),
            GridviewContainer(image: 'assets/menuicons/iPad.png'),
            GridviewContainer(image: 'assets/menuicons/watch.png'),
            GridviewContainer(image: 'assets/menuicons/tv.png'),
            GridviewContainer(image: 'assets/menuicons/airpod.png'),
            GridviewContainer(image: 'assets/menuicons/homepod.png'),
            GridviewContainer(image: 'assets/menuicons/airtag.png'),
            GridviewContainer(image: 'assets/menuicons/macsafe.png'),
            GridviewContainer(image: 'assets/menuicons/giftcards.png'),
          ],
        ));
  }
}

class GridviewContainer extends StatelessWidget {
  final String image;
  const GridviewContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal[100],
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill),
      ),
    );
  }
}
