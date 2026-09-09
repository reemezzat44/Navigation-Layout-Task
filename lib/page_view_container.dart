import 'package:flutter/material.dart';

class PageViewContainer extends StatefulWidget {
  final Color color;
  final IconData icon;
  final String? title;
  final String? subtitle;
  const PageViewContainer({
    super.key,
    required this.color,
    required this.icon,
    this.title,
    this.subtitle,
  });

  @override
  State<PageViewContainer> createState() => _PageViewContainerState();
}

class _PageViewContainerState extends State<PageViewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 100,
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.title!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(widget.subtitle!,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300)),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
