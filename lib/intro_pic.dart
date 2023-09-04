import 'package:flutter/material.dart';

class InPic extends StatefulWidget {
  const InPic({super.key});
  @override
  State<InPic> createState() {
    return _Shower();
  }
}

class _Shower extends State<InPic> {
  void rollDice() {
    setState(() {
      const Text("Real");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "The Ultimate Quiz",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        Image.asset(
          'assets/images/tmgyho.png',
          width: 200,
        ),
        // TextButton(
        //   onPressed: rollDice,
        //   style: TextButton.styleFrom(
        //     padding: const EdgeInsets.only(
        //       top: 20,
        //       bottom: 20,
        //     ),
        //     foregroundColor: Colors.white,
        //     textStyle: const TextStyle(fontSize: 28),
        //   ),
        //   child: const Text('Are You Ready?'),
        // )
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          child: const Text('Are You Ready?'),
        )
      ],
    );
  }
}
