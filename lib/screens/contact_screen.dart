import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   title: const Text('HOME SCREEN'),
        //   backgroundColor: myCustomColor,
        //   centerTitle: true,
        // ),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Text(
            'CONTACT SCREEN',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        )
      ],
    ));
  }
}
