import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // height: double.infinity,
        // width: double.infinity,
        Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        width: 18,
        height: 18,
        child: Center(
          child: Text("helloo",
              style: TextStyle(fontSize: 12, color: Colors.white)),
        ),
      ),

      // color: Colors.red,
    );
  }
}
