import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Branch extends StatefulWidget {
  const Branch({super.key, required this.branch});
  final String branch;

  @override
  State<Branch> createState() => _BranchState(branch);
}

class _BranchState extends State<Branch> {
  final String _title;

  //temp data
  String _HODNAME = "Pranjal Tiwari";
  String _CR = "Adarsh Parihar";
  String _CLASSTeacher = "Jyotsna Mam";
  List<String> _LECTURER = [
    "Nitu Mam",
    "Kanchan Saini",
    "Priyanka Mam",
    "Aditya Sir",
    "Abhishake Sir",
    "Manish Sir"
  ];
  List<String> _SUBJECT = [
    "Python",
    "JAVA",
    "IOT",
    "ISIT Law",
    "PHP",
    "MINI Projects"
  ];

  _BranchState(this._title);
  late List<TableRow> _subject;
  @override
  void initState() {
    _subject = [
      TableRow(decoration: BoxDecoration(color: Colors.blue), children: [
        Center(
            child: Text("Subject",
                style: GoogleFonts.charmonman(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white))),
        Center(
            child: Text("Lecture",
                style: GoogleFonts.charmonman(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white))),
      ]),
    ];
    for (var i = 0; i < _LECTURER.length; i++) {
      _subject.add(
        TableRow(children: [
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(_LECTURER.elementAt(i),
                style: GoogleFonts.lobster(fontWeight: FontWeight.w600)),
          )),
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(_SUBJECT.elementAt(i), style: GoogleFonts.teko()),
          )),
        ]),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          _title,
          style: GoogleFonts.charm(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Color(0x889E9E9E), blurRadius: 7, spreadRadius: 2)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(
                  MediaQuery.of(context).size.width * 0.5, 25),
              topRight: Radius.elliptical(
                  MediaQuery.of(context).size.width * 0.5, 25)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Center(
                    child: Text("HOD",
                        style: GoogleFonts.lobster(
                            fontWeight: FontWeight.w600, fontSize: 15)),
                  )),
                  Text(":"),
                  Expanded(
                    child: Center(
                      child:
                          Text(_HODNAME, style: GoogleFonts.teko(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Center(
                    child: Text("Class Cordinator",
                        style: GoogleFonts.lobster(
                            fontWeight: FontWeight.w600, fontSize: 15)),
                  )),
                  Text(":"),
                  Expanded(
                    child: Center(
                      child: Text(_CLASSTeacher,
                          style: GoogleFonts.teko(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Center(
                    child: Text("Class Representator",
                        style: GoogleFonts.lobster(
                            fontWeight: FontWeight.w600, fontSize: 15)),
                  )),
                  Text(":"),
                  Expanded(
                    child: Center(
                      child: Text(_CR, style: GoogleFonts.teko(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Table(
                    defaultColumnWidth: FixedColumnWidth(
                        MediaQuery.of(context).size.width * 0.45),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: _subject)),
          ],
        ),
      ),
    );
  }
}
