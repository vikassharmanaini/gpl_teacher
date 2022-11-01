import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class Subject extends StatefulWidget {
  const Subject({super.key});

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  String _unitname = "Socket Programming";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          "Subject",
          style: GoogleFonts.charm(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Unit Name : $_unitname",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          NumberStepper(
            enableNextPreviousButtons: false,
            enableStepTapping: false,
            scrollingDisabled: false,
            activeStep: 3,
            numbers: [1, 2, 3, 5, 11, 6],
          )
        ],
      ),
    );
  }
}
