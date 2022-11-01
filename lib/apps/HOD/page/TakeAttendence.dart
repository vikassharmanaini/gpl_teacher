import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeAttendence extends StatefulWidget {
  const TakeAttendence({super.key});

  @override
  State<TakeAttendence> createState() => _TakeAttendenceState();
}

class _TakeAttendenceState extends State<TakeAttendence> {
  List<_tile> _techersList = [
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
    _tile("Pratiksha Mam", attendence: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Take Attendece",
          style: GoogleFonts.charm(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
            child: Text(
              "Date : ${DateTime.now().toString().split(" ").first}",
              style: GoogleFonts.charm(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _techersList.length,
          itemBuilder: (context, index) => Card(
            child: CheckboxListTile(
              title: Text(_techersList.elementAt(index).name),
              value: _techersList.elementAt(index).attendence,
              onChanged: (value) => setState(
                () {
                  _techersList.elementAt(index).attendence =
                      !_techersList.elementAt(index).attendence;
                },
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Submit"),
        ),
      ),
    );
  }
}

class _tile {
  final String name;
  bool attendence;

  _tile(this.name, {this.attendence = false});
}
