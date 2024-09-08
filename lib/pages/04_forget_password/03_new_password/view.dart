import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/outline_button.dart';
import 'package:app/core/design/textfiled.dart';
import 'package:app/pages/03_login/view.dart';
import 'package:app/pages/04_forget_password/01_forget_password/cubit.dart';
import 'package:app/pages/test_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final cubit = GetIt.instance<ForgetPasswordCubit>();
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isPasswordValid = false;
  bool isPasswordSame = false;

  @override
  void initState() {
    super.initState();
    passwordController.addListener(_updatePasswordValidity);
    confirmPasswordController.addListener(_updatePasswordValidity);
  }

  void _updatePasswordValidity() {
    setState(() {
      isPasswordValid = passwordController.text.length >= 8;
      isPasswordSame =
          passwordController.text == confirmPasswordController.text;
    });
  }

  @override
  void dispose() {
    passwordController.removeListener(_updatePasswordValidity);
    confirmPasswordController.removeListener(_updatePasswordValidity);
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Set your new password so you can login and access Jobsque',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
                SizedBox(height: 30),
                AppTextField(
                  label: 'Enter new password....',
                  float: FloatingLabelBehavior.never,
                  prefixType: PrefixType.password,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text(
                  'Password must be at least 8 characters',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: isPasswordValid ? Colors.green : Color(0xFF9CA3AF),
                  ),
                ),
                SizedBox(height: 30),
                AppTextField(
                  label: 'Confirm password....',
                  float: FloatingLabelBehavior.never,
                  prefixType: PrefixType.password,
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmPasswordController,
                ),
                SizedBox(height: 12),
                Text(
                  'Passwords must match',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: isPasswordSame ? Colors.green : Color(0xFF9CA3AF),
                  ),
                ),
                SizedBox(height: 300.h),
                AppButton(
                    label: 'Reset password',
                    fillColor:
                        isPasswordValid && isPasswordSame ? null : Colors.grey,
                    onPressed: () {
                      isPasswordValid && isPasswordSame
                          ? AppGoto(LoginView())
                     : null;
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
