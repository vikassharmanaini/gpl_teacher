import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  final bool admin;
  const Profile({super.key, this.admin = false});

  @override
  State<Profile> createState() => _ProfileState(admin);
}

class _ProfileState extends State<Profile> {
  final bool _isadmin;

  String _profileImg =
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg";
  String _name = "Cheeku Mishra";
  String _dob = "12/10/2002";
  String _position = "HOD of IT Depart";
  String _username = "VikasSharma";
  String _contact = "8989560345";
  String _qualification = "B. Tech";
  String _joinyear = "2020";
  String _email = "swadesh@gmail.com";

  _ProfileState(this._isadmin);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: (_isadmin == true)
          ? FloatingActionButton(
              heroTag: "edit",
              onPressed: () => {},
              child: Icon(Icons.edit),
            )
          : null,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              child: Hero(
                tag: "profile",
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        filterQuality: FilterQuality.medium,
                        image: NetworkImage(_profileImg),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(50, 0, 94, 255),
                          blurRadius: 8,
                          spreadRadius: 8,
                        ),
                        BoxShadow(
                          color: Color(0xFFFFFFFF),
                          blurRadius: 7,
                          spreadRadius: 7,
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _name,
                    style:
                        GoogleFonts.pacifico(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            _DetailTile("D.O.B.", _dob),
            _DetailTile("Position", _position),
            _DetailTile("Username", "@$_username"),
            _DetailTile("Contact", "+91 $_contact"),
            _DetailTile("Email", _email, fontsize: 10),
            _DetailTile("Qualification", _qualification),
            _DetailTile("Joining Year", _joinyear),
          ],
        ),
      ),
    );
  }

  Widget _DetailTile(String field, String value, {double fontsize = 16}) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
                child: Center(
                    child: Text(field,
                        style: GoogleFonts.arvo(
                            fontSize: 17, fontWeight: FontWeight.bold)))),
            Text(
              ":",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(
                child: Center(
              child: Text(
                value,
                style: GoogleFonts.arvo(
                    fontSize: fontsize, fontWeight: FontWeight.w600),
              ),
            ))
          ],
        ),
      );
}
