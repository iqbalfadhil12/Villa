import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutus.dart';

class MainDrawer extends StatelessWidget {
  final Function onTap;

  MainDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.DG8X6W_rn8YmisAYIE00_gHaD5?pid=ImgDet&rs=1"),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Naruto",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Mobile Programing",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Profile"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.mail,
            color: Colors.black,
          ),
          title: Text("Pesan"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: Text("Pengaturan"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
                MaterialPageRoute(
                  builder: (context) => AboutUs(
            )));
          },
          leading: Icon(
            Icons.announcement,
            color: Colors.black,
          ),
          title: Text("About Us"),
        ),
      ],
    );
  }
}
