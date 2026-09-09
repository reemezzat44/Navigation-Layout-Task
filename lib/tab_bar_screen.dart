import 'package:assignment_16/custom_drawer.dart';
import 'package:assignment_16/tab_container.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff805ca2),
          title: const Text(
            "Flutter Assignment",
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
              unselectedLabelColor: Colors.white38,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Tab1",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Tab2",
                  icon: Icon(Icons.star),
                ),
                Tab(
                  text: "Tab3",
                  icon: Icon(Icons.favorite_rounded),
                ),
              ]),
        ),
        body: TabBarView(children: [
          TabContainer(
            color: Colors.blue.shade100,
            icon: const Icon(
              Icons.home,
              size: 100,
              color: Colors.black45,
            ),
            titleText: "Home Tab",
            subtitleText: "This is the content for Home Tab",
          ),
          TabContainer(
            color: Colors.amber.shade100,
            icon: const Icon(
              Icons.star,
              size: 100,
              color: Colors.black45,
            ),
            titleText: "Star Tab",
            subtitleText: "This is the content for Star Tab",
          ),
          TabContainer(
            color: Colors.pink.shade100,
            icon: const Icon(
              Icons.favorite,
              size: 100,
              color: Colors.black45,
            ),
            titleText: "Favourite Tab",
            subtitleText: "This is the content for Favourite Tab",
          ),
        ]),
      ),
    );
  }
}
