import 'package:flutter/material.dart';
import 'package:home_work3/custom_widgets/screens_widget.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Time(gradient1: Color(0xFF223076), gradient2: Color(0xFF06050E), dayImage: 'lib/assets/images/crescent-moon1.png', opposite: 'lib/assets/images/sun1.png'),
    );
  }
}