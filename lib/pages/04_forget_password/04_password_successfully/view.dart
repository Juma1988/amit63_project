import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/pages/test_view.dart';
import 'package:flutter/material.dart';

class PasswordChangedSuccessfully extends StatelessWidget {
  const PasswordChangedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 180),
              Center(
                child: Column(
                  children: [
                    AppImage(
                      'password_successfully.png',
                      height: 142,
                      width: 173,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Password changed \n successfully!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Your password has been changed successfully, we will let you know if there are more problems with your account',
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  AppGoto(TestView());
                  //todo Go Home
                },
                child: Text('Finish !!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
