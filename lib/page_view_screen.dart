import 'package:assignment_16/custom_drawer.dart';
import 'package:assignment_16/page_view_container.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff805ca2),
        title: const Text(
          "Flutter Assignment",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 13, bottom: 13, left: 30, right: 30),
        child: Column(
          children: [
            Expanded(
              child: Stack(children: [
                PageView(
                  controller: _controller,
                  children: const [
                    PageViewContainer(
                      color: Color.fromARGB(255, 142, 181, 213),
                      icon: Icons.looks_one,
                      title: "Page1",
                      subtitle: "Welcome to the first page",
                    ),
                    PageViewContainer(
                      color: Color.fromARGB(255, 112, 166, 114),
                      icon: Icons.looks_two,
                      title: "Page2",
                      subtitle: "this is the second page",
                    ),
                    PageViewContainer(
                      color: Color.fromARGB(255, 188, 171, 114),
                      icon: Icons.looks_3,
                      title: "Page3",
                      subtitle: "You're on the third page",
                    ),
                    PageViewContainer(
                      color: Color.fromARGB(255, 178, 114, 189),
                      icon: Icons.looks_4,
                      title: "Page4",
                      subtitle: "Final Page of the Demo",
                    ),
                  ],
                ),
                Positioned(
                  bottom: 80,
                  left: 110,
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ScrollingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.white,
                        dotColor: Colors.white24),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
