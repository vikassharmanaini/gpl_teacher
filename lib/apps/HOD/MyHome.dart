import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:gpl_teacher/apps/HOD/page/AllList.dart';
import 'package:gpl_teacher/apps/HOD/page/Profile.dart';
import 'package:gpl_teacher/apps/HOD/page/TakeAttendence.dart';
import 'package:gpl_teacher/widgets/CurvePaint.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _profileImage =
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg";
  String _name = "Chiku Mishra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.119),
                  painter: CurvePaint(),
                ),
                Positioned(
                  top: 40,
                  right: 10,
                  child: InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile())),
                    child: Hero(
                      tag: "profile",
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              filterQuality: FilterQuality.medium,
                              image: NetworkImage(_profileImage),
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
                ),
                Positioned(
                    top: 120,
                    right: 10,
                    child: Text(
                      _name,
                      style: GoogleFonts.pacifico(
                          fontSize: 16, color: Colors.black),
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.76,
              padding: EdgeInsets.all(5),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: cardcont.length,
                itemBuilder: (context, index) => _contain(
                  cardcont.elementAt(index).name,
                  cardcont.elementAt(index).pic,
                  cardcont.elementAt(index).page
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<_CardContainer> cardcont = [
    _CardContainer("Branch", "assets/undraw_New_entries_re_cffr.jpg", AllList(Type: "Branch List"),
        ),
    _CardContainer("Lecturer", "assets/undraw_Add_user_re_5oib.png", AllList(Type: "Teacher List"),
        ),
    _CardContainer(
        "Subjects", "assets/addsubject.png", AllList(Type: "Subject List"), ),
    _CardContainer("Edit Schedule", "assets/undraw_Time_management_re_tk5w.png",
        AllList(Type: "Time Table"), ),
    _CardContainer(
        "Add Notice", "assets/undraw_Content_re_33px.png", AllList(Type: "Notice"), ),
    _CardContainer("Attendence", "assets/undraw_Work_in_progress_re_byic.png",
        TakeAttendence(), ),
    // _CardContainer(
    // "Teachers List", "assets/undraw_chore_list_re_2lq8.png", Profile(),""),
    _CardContainer(
        "Ragistar", "assets/undraw_task_list_6x9d.png", AllList(Type: "Ragistar"), ),
    _CardContainer("Students", "assets/undraw_mathematics_4otb.png", AllList(Type: "Student List"),
        ),
  ];

  Widget _contain(String name, String pic ,Widget page) {
    return Hero(
      tag: name,
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => page)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(pic),
                  filterQuality: FilterQuality.medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                child: Center(
                  child: Text(
                    name,
                    style: GoogleFonts.titilliumWeb(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardContainer {
  final String name;
  final String pic;
  final Widget page;
  // final String pageTitle;
  _CardContainer(this.name, this.pic, this.page, );
}
