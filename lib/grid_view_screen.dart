import 'package:assignment_16/custom_drawer.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final List<Color> colors = const [
    Color.fromARGB(255, 248, 172, 167),
    Color.fromARGB(255, 151, 226, 154),
    Color.fromARGB(255, 151, 197, 235),
    Color.fromARGB(255, 251, 217, 167),
    Color.fromARGB(255, 233, 184, 242),
    Color.fromARGB(255, 163, 219, 213),
    Color.fromARGB(255, 236, 235, 185),
    Color.fromARGB(255, 172, 135, 184),
    Color.fromARGB(255, 188, 163, 178),
    Color.fromARGB(255, 195, 186, 233),
  ];
  const GridViewScreen({super.key});

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
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: colors.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.grid_on, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text(
                    "Grid ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
