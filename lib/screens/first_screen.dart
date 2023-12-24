import 'package:flutter/material.dart';
import 'package:home_work3/custom_widgets/screens_widget.dart';

class FirstScreen extends StatefulWidget {

  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Time(dayImage: 'lib/assets/images/sun1.png', gradient1: Color(0xff4BB5F1),gradient2: Color(0xff2F2CBC), opposite: 'lib/assets/images/Ellipse1.png',),
    );
  }
}

