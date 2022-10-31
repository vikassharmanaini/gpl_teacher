import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllList extends StatefulWidget {
  const AllList({super.key, required this.Type});
  final String Type;
  @override
  State<AllList> createState() => _AllListState(Type);
}

class _AllListState extends State<AllList> {
  final String _type;
  List<_tile> _tiled = [
    _tile("", "Information Technology 1st Year", "Open"),
    _tile("", "Information Technology 2nd Year", "Open"),
    _tile("", "Information Technology 3rd Year", "Open"),
    _tile("", "PGDCA 1st year", "Open"),
  ];

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
                    color: (index % 2 == 0)
                        ? Color.fromARGB(172, 252, 252, 252)
                        : Color.fromARGB(103, 202, 202, 202),
                    child: ListTile(
                      leading: Text("Branch ${index + 1}"),
                      title: Text(_tiled.elementAt(index).title),
                      trailing: Icon(Icons.shortcut_rounded),
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
