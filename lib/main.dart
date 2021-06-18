import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardwidget.dart';
import 'package:flutter_application_1/detailpage.dart';
import 'package:flutter_application_1/drawerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imgList = [
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/2f/79/ed/uitzicht-vanaf-je-kamer.jpg?w=900&h=-1&s=1",
    "https://pix10.agoda.net/hotelImages/245855/-1/e50c300d58676aaaeacd17a727c91563.jpg",
    "https://cf.bstatic.com/images/hotel/max1280x900/278/278242225.jpg",
    "https://pix10.agoda.net/hotelImages/245855/-1/c97e833fb1cbc65f70eba4d1300bd50d.jpg?s=1024x768",
    "https://st.depositphotos.com/1061445/1975/i/600/depositphotos_19758049-stock-photo-building-of-the-luxury-hotel.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        // ignore: missing_required_param
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Villa App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Selamat datang di app villa",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Applikasi penyedia informasi villa terbaik..",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Cari Villa...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            CarouselSlider(
              options: CarouselOptions(
                  height: 320.0, enableInfiniteScroll: false, initialPage: 3),
              items: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  imgList[4],
                                  "Star Villa",
                                  "Bali",
                                  "IDR 4.500.000",
                                  "Vila 2 tempat tidur besar yang cantik ini berada di lokasi yang luar biasa di jantung Sanur. Terang, sejuk dan modern dengan segala nuansa Bali. Dilengkapi tanpa cela dengan perabotan dan perlengkapan bergaya yang paling nyaman. Anda memiliki akses ke kolam besar yang berkilau dan indah. Air minum tersedia di seluruh vila melalui sistem air yang disaring. Dapur lengkap dengan item pantry yang murah hati juga disediakan. Semua handuk dan seprai memiliki kualitas terbaik karena pemiliknya bersikeras untuk tidak mengeluarkan biaya apa pun. Berjalan kaki ke pantai dan dekat dengan semua toko, salon dan supermarket di jalan utama Sanur.")));
                    },
                    child: cardShape(imgList[4], "Star Villa", "Bali")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  imgList[2],
                                  "Hazelhouse Villa",
                                  "Bandung",
                                  "IDR 2.500.000",
                                  "Disewakan 1 lantai terdiri dari 3 kamar, masing-masing terdapat kamar mandi dalam. Suasana hommy & cozy di lingkungan sekitar bukit Punclut, udara pegunungan yang sejuk, aman, nyaman, bebas banjir. Tidak menggunakan AC karena udara masih sejuk. Tiap kamar terdapat TV 32 inch, kamar mandi dalam air panas & dingin. Terdapat Ruang tengah yang terdiri dari sofa & meja makan. Tersedia dapur beserta perlengkapan memasak & alat makan. Free wifi. Ruang tamu + meja makan, dapur + peralatan masak + peralatan makan, kulkas, dispenser, parkir 3 mobil.")));
                    },
                    child:
                        cardShape(imgList[2], "Hazelhouse Villa", "Bandung")),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  imgList[3],
                                  "Votive Villa",
                                  "Bogor",
                                  "IDR 6.500.000",
                                  "Villa tinggal 2 lantai dengan suasana villa, pemanfaatan lahan sebagai area terbuka taman cukup luas, sehingga tercipta suasana yang asri dan hijau. Milik Ibu Inge dilampung, dibangun diatas lahan drop car depan teras ruang tamu, garasi posisi dibelakang akses mobil selebar 4M dengan pagar alas tanaman bambu, dapat dibayangkan akan menjadi hunian yang sangat nyaman dan hijau.")));
                    },
                    child: cardShape(imgList[3], "Votive Villa", "Bogor")),
              ],
            )
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            // ignore: deprecated_member_use
            title: Text("About Us"),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // ignore: unused_local_variable
    var round = 40.0;

    path.moveTo(round * 2, round * 2);
    path.quadraticBezierTo(0, round * 3, 0, round * 4);
    path.lineTo(0, size.height - round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height - round);
    path.lineTo(size.width, round * 1.5);
    path.quadraticBezierTo(size.width, 0, round * 2, round * 2);

    return path;
  }

  @override
  // ignore: missing_return
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
