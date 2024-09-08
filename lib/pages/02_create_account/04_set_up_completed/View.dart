
import 'package:app/core/design/image.dart';
import 'package:flutter/material.dart';

class AccountSetupCompletedPage extends StatelessWidget {
  const AccountSetupCompletedPage({super.key});

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
            child: Column(children: [
              SizedBox(height: 180),
              Center(
                child: Column(
                  children: [
                    AppImage(
                      'success_account_setup.png',
                      height: 142,
                      width: 173,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Your account has been set up!',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF111827)),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'We have customized feeds according to your \npreferences',
                      style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
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
                    //todo Go to home
                  },
                  child: Text('Get Started'))
            ])),
      ),
    );
  }
}
