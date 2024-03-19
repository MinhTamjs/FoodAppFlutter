import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foodapp/constants/icons.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            
        ],)
      ),
    );
  }
}

// Thanh App bar


//Widget Quảng cáo


//Widget List