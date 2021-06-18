import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  var url;
  var name;
  var location;
  var price;
  var deskripsi;

  DetailsPage(this.url, this.name, this.location, this.price, this.deskripsi);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.orange[300]),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 43.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 55.0),
                    Text(
                      'ALAMAT',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: 45.0),
                    Text(
                      'BIAYA PER MALAM',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height / 2) - 220.0,
                right: (MediaQuery.of(context).size.width / 2) - 190.0,
                child: Container(
                  height: 240.0,
                  width: 180.0,
                  child: Image(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                    height: 300.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 300.0,
                  left: 20.0,
                  right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Deskripsi...',
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      deskripsi,
                      style: TextStyle(
                      fontSize: 14.0,
                    ),
                    ),
                  ],
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
