import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#BF9665"),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  color: Colors.brown,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://domo7.sg/wp-content/uploads/2020/01/profile-picture-june-2015-corner-rounded_049204920.png")),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2,
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Cari Tempat\nTongkrongan Cirebon",
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cafe Favoritmu",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 32),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Tempat Favorit",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            item_toko(
              gambar: "assets/coffee_1.jpg",
              nama: "Kopi Kenangan",
              rating: "4.4",
              jam: "09.00 - 21.00",
            ),
            item_toko(
              gambar: "assets/coffee_2.jpg",
              nama: "Janji Jiwa",
              rating: "4.3",
              jam: "09.00 - 21.00",
            ),
            item_toko(
              gambar: "assets/coffee_3.jpg",
              nama: "Coffee Lieur",
              rating: "4.5",
              jam: "13.00 - 23.00",
            ),
          ],
        )),
      ),
    );
  }
}

class item_toko extends StatelessWidget {
  final String gambar;
  final String nama;
  final String rating;
  final String jam;

  const item_toko({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.rating,
    required this.jam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(
        children: [
          Card(
            color: Colors.brown,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 7,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    gambar,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          rating,
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          jam,
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
