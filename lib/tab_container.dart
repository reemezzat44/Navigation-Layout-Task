import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String? titleText;
  final String? subtitleText;
  const TabContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.titleText,
    required this.subtitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            titleText!,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitleText!,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 141, 141, 141)),
          ),
        ],
      ),
    );
  }
}
