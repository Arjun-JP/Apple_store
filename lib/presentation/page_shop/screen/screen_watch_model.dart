// import 'package:apple_store/domain/productlist.dart';
// import 'package:apple_store/presentation/page_shop/widgets/tittle.dart';
// import 'package:flutter/material.dart';

// int count = 1;

// class WatchModel extends StatelessWidget {
//   var index = 0;
//   WatchModel({super.key, required this.index});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 78, 72, 72),
//       body: ListView(
//         children: [
//           Column(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height * .7,
//                 color: Colors.black,
//                 child: ColorBUtton(count: count),
//               ),
//             ],
//           ),
//           Containers(image: productDatalist[index]["image1"]!),
//           Containers(image: productDatalist[index]["image2"]!),
//           Containers(image: productDatalist[index]["image3"]!),
//           Containers(image: productDatalist[index]["image4"]!),
//           Containers(image: productDatalist[index]["image5"]!),
//           Containers(image: productDatalist[index]["image6"]!),
//           Containers(image: productDatalist[index]["image7"]!),
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height * .4,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(productDatalist[index]["image8"]!),
//                   fit: BoxFit.fill,
//                 ),
//                 color: const Color.fromARGB(255, 1, 1, 1),
//                 borderRadius: BorderRadius.circular(20)),
//           ),
//           // const Containers(image: 'assets/14Pro/8.PNG'),
//           Containers(image: productDatalist[index]["image1"]!),
//           Containers(image: productDatalist[index]["image2"]!),
//           // const Containers(image: 'assets/11.PNG'),

//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height * .8,
//             color: Colors.white,
//             child: Stack(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(
//                       left: 30, top: MediaQuery.of(context).size.height * .03),
//                   child: const HeaddingBold(
//                       tittle: 'iPhone 14 Pro',
//                       fontsize: 30,
//                       colour: Colors.black),
//                 ),
//                 Container(
//                   margin:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * .6,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(productDatalist[index]["image1"]!),
//                         fit: BoxFit.fill,
//                       ),
//                       color: const Color.fromARGB(0, 255, 255, 255),
//                       borderRadius: BorderRadius.circular(20)),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height * .52),
//                   child: Center(
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       )),
//                       child: const Text('BUY'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height * .67),
//                   child: const Center(
//                     child: Text('From ₹115000'),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Containers extends StatelessWidget {
//   final String image;
//   const Containers({super.key, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * .8,
//       decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(image),
//             fit: BoxFit.fill,
//           ),
//           color: const Color.fromARGB(255, 1, 1, 1),
//           borderRadius: BorderRadius.circular(20)),
//     );
//   }
// }

// class ColorBUtton extends StatefulWidget {
//   final int count;
//   const ColorBUtton({super.key, required this.count});

//   @override
//   State<ColorBUtton> createState() => _ColorBUttonState();
// }

// class _ColorBUttonState extends State<ColorBUtton> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * .6,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(count == 1
//                   ? 'assets/0000.PNG'
//                   : count == 2
//                       ? 'assets/0.PNG'
//                       : count == 3
//                           ? 'assets/00.PNG'
//                           : 'assets/000.PNG'),
//               fit: BoxFit.fill,
//             ),
//             color: const Color.fromARGB(255, 24, 22, 30),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   count = 1;
//                 });
//               },
//               child: const CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 105, 33, 110),
//               ),
//             ),
//             const VerticalDivider(width: 10),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   count = 2;
//                 });
//               },
//               child: const CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 241, 233, 90),
//               ),
//             ),
//             const VerticalDivider(width: 10),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   count = 3;
//                 });
//               },
//               child: const CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 255, 255, 255),
//               ),
//             ),
//             const VerticalDivider(width: 10),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   count = 4;
//                 });
//               },
//               child: const CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 71, 71, 71),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
