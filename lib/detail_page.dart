import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      "Toko Maman Roti",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.6 (32 Reviews)",
                        style: GoogleFonts.poppins(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10.00 - 21.00 WIB",
                        style: GoogleFonts.poppins(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
            //Card Promo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Ada promo untuk kamu",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          Text(
                            "Dapatkan diskon 100 ribu",
                            style: GoogleFonts.poppins(fontSize: 11),
                          )
                        ],
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Tukar"))
                    ],
                  ),
                ),
              ),
            ),
            //ALAMAT
            TitleDetail(
              title: "Alamat",
              detail:
                  "Jl. Raya Cipto Mangunkusumo No. 69 \n Kota Cirebon, Jawa Barat",
            ),
            TitleDetail(
              title: "Deskripsi",
              detail:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
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
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      )
                    ],
                  )
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
