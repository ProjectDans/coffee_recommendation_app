import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#BF9665"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo.png"),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "example@gmail.com",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 17)),
                              )),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Password",
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 17),
                                    suffixIcon: Icon(Icons.visibility_off)),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: HexColor("#E7D1B8"),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Remember Me",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            "Forgot Password",
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      Container(
                          width: double.infinity,
                          height: 37,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor("#E7D1B8")),
                              onPressed: () {
                                Navigator.pushNamed(context, '/Homepage');
                              },
                              child: Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ))),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: double.infinity,
                          height: 37,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor("#E7D1B8")),
                              onPressed: () {
                                Navigator.pushNamed(context, '/Registerpage');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo_google.png",
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Login With Google",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ))),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You don't have an account yet?",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
