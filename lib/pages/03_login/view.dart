import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/outline_button.dart';
import 'package:app/core/design/textfiled.dart';
import 'package:app/pages/02_create_account/01_create_account/view.dart';
import 'package:app/pages/03_login/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final cubit = GetIt.instance<LoginCubit>();

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
      body: Form(
        // key: cubit.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Please login to find your dream job',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20.h),
                AppTextField(
                  label: 'email',
                  prefixType: PrefixType.email,
                  keyboardType: TextInputType.emailAddress,
                  controller: cubit.emailController,
                ),
                SizedBox(height: 16.h),
                AppTextField(
                  label: 'Password',
                  prefixType: PrefixType.password,
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  controller: cubit.passwordController,
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          //todo goto forget password
                        },
                        child: Text('Forgot Password?'))
                  ],
                ),
                SizedBox(height: 80.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Do not have an account?'),
                    TextButton(
                      onPressed: () {
                        AppGoto(CreateAccountView());
                      },
                      child: Text('Create Account',
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                BlocBuilder(
                  bloc: cubit,
                  builder: (context, state) {
                    if (state is LoginLoadingState) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      );
                    } else {
                      return AppButton(
                        label: 'Login',
                        borderRadius: 1000,
                        onPress: () {
                          cubit.postData();
                        },
                      );
                    }
                  },
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Or Sign up With Account'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialButton(
                      'assets/images/google.png',
                      'Google',
                      //todo login using google account
                      () {},
                    ),
                    _buildSocialButton(
                      'assets/images/Facebook.png',
                      'Facebook',
                      () {
                        //todo login using facebook account
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildSocialButton(String iconPath, String text, VoidCallback? onPress) {
  return OutlinedButton.icon(
    icon: Image.asset(iconPath, height: 24),
    label: Text(text),
    style: OutlinedButton.styleFrom(
      minimumSize: Size(150, 50),
      side: BorderSide(color: Colors.grey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    onPressed: onPress ?? () {},
  );
}
