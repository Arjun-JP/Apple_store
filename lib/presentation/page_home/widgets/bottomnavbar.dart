import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: ((context, int newindex, _) {
          return BottomNavigationBar(
            currentIndex: newindex,
            onTap: ((index) {
              indexNotifier.value = index;
            }),
            backgroundColor: Theme.of(context).backgroundColor,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.device_laptop), label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart), label: 'For You'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bag), label: 'Bag'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
            ],
          );
        }),
      );
    }
  }
}
