import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/outline_button.dart';
import 'package:app/core/design/textfiled.dart';
import 'package:app/pages/03_login/view.dart';
import 'package:app/pages/04_forget_password/01_forget_password/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'states.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
final cubit = GetIt.instance<ForgetPasswordCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppImage(
            'Logoo.png',
            width: 80.w,
            height: 20.h,
          ),
          SizedBox(width: 24.w)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter the email address you used when you joined and we\'ll send you instructions to reset your password.',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(height: 30),
            AppTextField(
              label: 'Enter your email....',
              float: FloatingLabelBehavior.never,
              prefixType: PrefixType.email,
              keyboardType: TextInputType.emailAddress,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You remember your password? '),
                TextButton(
                  child: Text('Login', style: TextStyle(color: Colors.blue)),
                  onPressed: () {
                    AppGoto(LoginView());
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(width: double.infinity),
            BlocBuilder(
              bloc: cubit,
              builder: (context, state) {
                if (state is ForgetPasswordLoadingState) {
                  return Center(
                      child: CircularProgressIndicator(color: Colors.red));
                } else {
                  return AppButton(
                    label: 'Request password reset',
                    onPressed: () {
                      cubit.postData();
                    },
                  );
                }
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
