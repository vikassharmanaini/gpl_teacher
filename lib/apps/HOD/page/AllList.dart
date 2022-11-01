import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpl_teacher/apps/HOD/page/Branch.dart';
import 'package:gpl_teacher/apps/HOD/page/Profile.dart';
import 'package:gpl_teacher/apps/HOD/page/Subject.dart';

class AllList extends StatefulWidget {
  const AllList({super.key, required this.Type});
  final String Type;
  @override
  State<AllList> createState() => _AllListState(Type);
}

class _AllListState extends State<AllList> {
  final String _type;
  late List<_tile> _tiled;
  @override
  void initState() {
    _tiled = [];
    _tempdatafill();
    super.initState();
  }

  //temp data fill
  void _tempdatafill() {
    if (_type == "Teacher List") {
      for (var i = 0; i < 10; i++) {
        _tiled.add(_tile("", "Raju Srinivas", ""));
      }
    } else if (_type == "Subject List") {
      for (var i = 0; i < 23; i++) {
        _tiled.add(_tile("", "Mini Subject", ""));
      }
    } else {
      _tiled.addAll([
        _tile("", "Information Technology 1st Year", "Open"),
        _tile("", "Information Technology 2nd Year", "Open"),
        _tile("", "Information Technology 3rd Year", "Open"),
        _tile("", "PGDCA 1st year", "Open"),
      ]);
    }
  }

  _AllListState(this._type);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          _type,
          style: GoogleFonts.charm(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height - 50,
          child: ListView.builder(
              itemCount: _tiled.length,
              itemBuilder: (context, index) => Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Text("Branch ${index + 1}"),
                      title: Text(_tiled.elementAt(index).title),
                      trailing: Icon(Icons.shortcut_rounded),
                      onTap: () => (_type == "Teacher List")
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()))
                          : (_type == "Subject List")
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Subject()))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Branch(
                                          branch:
                                              _tiled.elementAt(index).title))),
                    ),
                  ))),
    );
  }
}

class _tile {
  final String leading;
  final String title;
  final String traling;

  _tile(this.leading, this.title, this.traling);
}
