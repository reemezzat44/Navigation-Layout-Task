import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff805ca2),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 39,
                      child: Icon(
                        Icons.person,
                        size: 39,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Reem Ezzat",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              )),
          ListTile(
            title: const Text("Profile"),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: const Text("About"),
            leading: const Icon(Icons.info),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
