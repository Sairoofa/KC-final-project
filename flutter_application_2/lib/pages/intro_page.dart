import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

// import 'Home_page.dart';

class intropage extends StatelessWidget {
  intropage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var style;
    // ignore: unused_local_variable
    var textAlign;
    var Navigator;
    // ignore: unused_local_variable
    var gestureDetector = GestureDetector(
        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const Homepage();
              },
            )));

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(
                  12,
                )),
            padding: const EdgeInsets.all(24),
            child: const Text('get started',
                style: TextStyle(color: Colors.white)),
          ),

          //logo
          Padding(
            padding: EdgeInsets.only(
              left: 80.0,
              right: 80,
              bottom: 40,
              top: 160,
            ),
            child: Image.asset('lib/images/basis.jpg'),
          ),

          //قال -تعالى-: (لَن تَنَالُوا الْبِرَّ حَتَّىٰ تُنفِقُوا مِمَّا تُحِبُّونَ وَمَا تُنفِقُوا مِن شَيْءٍ فَإِنَّ اللَّـهَ بِهِ عَلِيمٌ)
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "قال -تعالى-: (لَن تَنَالُوا الْبِرَّ حَتَّىٰ تُنفِقُوا مِمَّا تُحِبُّونَ وَمَا تُنفِقُوا مِن شَيْءٍ فَإِنَّ اللَّـهَ بِهِ عَلِيمٌ)",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(
            height: 24,
          ),
          //Made by : Aseel Alsairafi
          Text(
            "Made by : Aseel Alsairafi",
            style: TextStyle(color: Colors.grey[600]),
          ),

          //get started button
          // gestureDetector,
        ],
      ),
    );
  }
}
