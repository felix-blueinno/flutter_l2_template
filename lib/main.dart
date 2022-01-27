// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

String backgroundImgUrl =
    "https://i.pinimg.com/originals/90/bb/af/90bbaf9de7ca1af7aadfd8ad0397e375.gif";

String myName = "Felix Wong";
String myJob = "Student";

main() => runApp(MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set size to fill screen
      height: double.infinity,
      width: double.infinity,

      // Background image:
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(backgroundImgUrl),
        ),
      ),

      // Main content:
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, I'm",
                style: TextStyle(fontSize: 48, color: Colors.white)),
            SizedBox(height: 8),
            Text(myName, style: TextStyle(fontSize: 48, color: Colors.white)),
            SizedBox(height: 16),
            Text(myJob, style: TextStyle(fontSize: 24, color: Colors.white60)),
            SizedBox(height: 32),
            Row(
              children: [
                bottomLeftButton(context),
                SizedBox(width: 16),
                bottomRightButton(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  bottomLeftButton(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 96,
      child: ElevatedButton(
        onPressed: () => print("Replace_with_your_function"),
        child: Row(
          children: [
            Icon(Icons.chevron_left_rounded, color: Colors.white, size: 24),

            // This widget will occupy all remaining space
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("About",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                Text("Me", style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
            SizedBox(width: 8)
          ],
        ),
        style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
      ),
    );
  }

  bottomRightButton(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 96,
      child: ElevatedButton(
        onPressed: () => print("Replace_with_your_function"),
        child: Row(
          children: [
            SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My", style: TextStyle(fontSize: 16, color: Colors.white)),
                Text("Work",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),

            // This widget will occupy all remaining space
            Spacer(),
            Icon(Icons.chevron_right_rounded, color: Colors.white, size: 24),
          ],
        ),
        style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
      ),
    );
  }
}
