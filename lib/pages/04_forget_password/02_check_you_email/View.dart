import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/show_msg.dart';
import 'package:app/pages/04_forget_password/03_new_password/view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckYourEmailPage extends StatelessWidget {
  const CheckYourEmailPage({super.key});

  Future<void> _launchGmail() async {
    final Uri gmailUrl = Uri(
      scheme: 'https',
      host: 'mail.google.com',
      path: '/mail/u/0/#inbox',
    );

    if (await canLaunchUrl(gmailUrl)) {
      await launchUrl(gmailUrl, mode: LaunchMode.externalApplication);
    } else {
      final Uri emailUrl = Uri(scheme: 'mailto');
      if (await canLaunchUrl(emailUrl)) {
        await launchUrl(emailUrl);
      } else {
        throw 'Could not launch email app';
      }
    }
  }

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
                      'check_your_email.png',
                      height: 142,
                      width: 173,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Check your Email',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'We have sent a reset password to your email address',
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
                onPressed: () async {
                  try {
                    await _launchGmail();
                    AppGoto(NewPasswordView());
                  } catch (e) {
                    AppGoto(NewPasswordView());
                    AppShowMsg('Could not open email app',type: MessageType.error,showCloseIcon: true,);
                  }
                },
                child: Text('Open email app'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
