import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

// ignore: missing_return
Widget cardShape(
  String imgurl,
  String name,
  String location,
) {
  // ignore: missing_required_param
  return Hero(
    // ignore: unnecessary_brace_in_string_interps
    tag: 'box-${location}',
    child: Material(
      color: Colors.transparent,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 210.0,
          height: 300.0,
          decoration: BoxDecoration(
              // ignore: missing_required_param
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imgurl),
          )),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
