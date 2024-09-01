//todo there is so much work todo, log in using face,google, the password restrictions sent API
//todo disable create account when not all fields filled

import 'package:app/Pages/03_login/view.dart';
import 'package:app/core/design/image.dart';
import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/outline_button.dart';
import 'package:app/core/design/textfiled.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'cubit.dart';
import 'states.dart';

class CreateAccountView extends StatefulWidget {
  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final formKey = GlobalKey<FormState>();

  final cubit = GetIt.instance<CreateAccountCubit>();

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
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Please create an account to find your dream job',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20.h),
                AppTextField(
                  label: 'username',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '*This field can not be empty';
                    } else if (value.length < 3) {
                      return '*username must be more than 3 characters';
                    } else {
                      null;
                    }
                  },
                  prefixType: PrefixType.username,
                  controller: cubit.userNameController,
                ),
                SizedBox(height: 16.h),
                AppTextField(
                  label: 'email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Please enter an email';
                    }
                    if (!value.contains('@')) {
                      return '*Email must contain @';
                    }
                    if (!value.contains('.')) {
                      return '*Email must contain a domain (e.g., .com)';
                    }
                    if (value.length < 5) {
                      return '*Email is too short';
                    }
                    return null;
                  },
                  prefixType: PrefixType.email,
                  keyboardType: TextInputType.emailAddress,
                  controller: cubit.emailController,
                ),
                SizedBox(height: 16.h),
                AppTextField(
                  label: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    final passwordRegExp =
                        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                    if (!passwordRegExp.hasMatch(value)) {
                      return 'Password must be at least 6 characters long and contain \nat least one letter and one number';
                    }
                    return null;
                  },
                  prefixType: PrefixType.password,
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  controller: cubit.passwordController,
                ),
                SizedBox(height: 80.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        AppGoto(LoginView());
                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      if (state is LoadingCreateAccountState) {
                        return Center(child: CircularProgressIndicator(),);
                      } else if (state is FailedCreateAccountState) {
                        return Center(child: Text("Loading Failed !!"));
                      } else {
                        return AppButton(label: 'Create Account');
                      }
                    }),
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
                      () {
                        //todo login using google account
                      },
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

  Widget _buildSocialButton(
      String iconPath, String text, VoidCallback? onPress) {
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('CreateAccountCubit', CreateAccountCubit));
  }
}
