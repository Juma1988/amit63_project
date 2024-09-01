import 'dart:async';

import 'package:app/pages/03_login/view.dart';
import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      AppGoto(LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _CustomContainer(opacity: 0.15, diameter: 700),
            _CustomContainer(opacity: 0.20, diameter: 520),
            _CustomContainer(opacity: 0.25, diameter: 340),
            _CustomContainer(opacity: 0.30, diameter: 160),
            AppImage(
              'logo.png',
              height: 30,
              width: 140,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  final double diameter, opacity;

  const _CustomContainer({required this.diameter, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2,
      child: Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFD6E4FF).withOpacity(opacity),
          )),
    );
  }
}
