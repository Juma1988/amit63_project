import 'package:app/core/design/image.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFFfef6f1),
          child: AppImage(
              'https://miro.medium.com/v2/resize:fit:6000/1*7KI_xHL9JPUDDRMEdKbOGQ.png'),
        ),
      ),
    );
  }
}
