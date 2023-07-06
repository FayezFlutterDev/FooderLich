import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Flexible(
      child: Container(
        color: Colors.red,
        height: 50,
      ),
    ),
     Flexible(
       child: Container(
        color: Colors.greenAccent,
        height: 50,
         ),
     ),
    
  ],
)
;
  }
}