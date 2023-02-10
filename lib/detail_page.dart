import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("#C19F77"),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/coffee_3.jpg"))),
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      child: Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Kopi Kenangan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: HexColor("#C19F77"),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 10, bottom: 15, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Info Umum",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 75,
                      height: 24,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown),
                          onPressed: () {},
                          child: Text(
                            "4.5",
                            style: GoogleFonts.poppins(fontSize: 12),
                          )),
                    )
                  ],
                )),
            //ALAMAT
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Jl. DR. Cipto Mangunkusumo",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "13.00 - 23.00",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Icon(Icons.menu_book_sharp),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Harga Menu Murah dan Terjangkau",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Icon(Icons.width_wide_sharp),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Tempat yang luas dan nyaman",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Icon(Icons.wifi),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Free Wifi",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {},
                    child: Text("Lihat Menu")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {},
                    child: Text("Lihat Peta Lokasi")),
              ),
            ),

            //TITLE ULASAN ATAU COMMENT
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Ulasan",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),

            //WIDGET ULASAN ATAU COMMENT
            Comment(
                image:
                    "https://domo7.sg/wp-content/uploads/2020/01/profile-picture-june-2015-corner-rounded_049204920.png"),
            Comment(
                image:
                    "https://www.pngitem.com/pimgs/m/394-3947083_round-profile-picture-png-transparent-png.png"),
            Comment(
                image:
                    "https://www.pngitem.com/pimgs/m/404-4042710_circle-profile-picture-png-transparent-png.png"),
            Comment(
                image:
                    "https://www.pngkey.com/png/full/590-5904853_glen-circle-profile-fundraising.png"),
          ],
        )),
      ),
    );
  }
}

class Comment extends StatelessWidget {
  final String image;

  const Comment({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                image,
                width: 45,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mimin Racing",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: GoogleFonts.poppins(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;

  const TitleDetail({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            detail,
            style: GoogleFonts.poppins(fontSize: 12),
          )
        ],
      ),
    );
  }
}
