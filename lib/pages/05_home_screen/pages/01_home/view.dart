import 'package:app/core/design/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'cubit.dart';


part '_recent.dart';
part '_search.dart';
part '_suggested.dart';
part '_welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Welcome(),
                SizedBox(height: 20),
                _Search(),
                SizedBox(height: 20.h),
                SizedBox(
                  child: _SuggestedJob(),
                  height: 260.h,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 200,
                  child: _RecentJobPage(),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
