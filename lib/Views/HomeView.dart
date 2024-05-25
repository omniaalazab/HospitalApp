import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/Views/Health.dart';
import 'package:task_app/Views/SearchView.dart';
import 'package:task_app/widget/CustomAppBar.dart';
import 'package:task_app/widget/CustomCardInfo.dart';
import 'package:task_app/widget/customBodyText.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int SelectedIndex = 0;
  var icons = [
    Icons.home,
    Icons.newspaper,
  ];
  List<Map<String, dynamic>> screens = [
    {'screen': SearchView(), 'title': 'الرئيسية'},
    {'screen': HealthView(), 'title': 'اخبار صحية'},
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            elevation: 0,
            centerTitle: true,
            title: CustomAppBar(title: 'البحث'),
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            onTap: (value) {
              setState(() {
                SelectedIndex = value;
              });
            },
            itemCount: icons.length,
            tabBuilder: (index, isActive) {
              return Icon(
                icons[index],
                color: isActive
                    ? Color.fromARGB(255, 116, 141, 196)
                    : Colors.black,
                size: isActive ? 40 : 25,
              );
            },
            activeIndex: SelectedIndex,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.smoothEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,

            // currentIndex: SelectedIndex,
            // items: [
            //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            //   BottomNavigationBarItem(
            //       icon: Icon(Icons.add_chart), label: 'Order'),
            //   BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            // ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: screens[SelectedIndex]['screen']),
            ),
          ),
        ));
  }
}
