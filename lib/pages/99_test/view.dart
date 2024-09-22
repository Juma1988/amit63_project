import 'package:app/pages/99_test/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  bool isFavourite = false;
  final cubit = GetIt.instance<ShoppingAppCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App debug'),
      ),
      extendBodyBehindAppBar: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: GridView.builder(
          itemCount: cubit.model?.list.length,
          itemBuilder: (context, index) => Container(
            height: 300.h,
            width: 189.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ]),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r).copyWith(
                          bottomLeft: Radius.circular(0.r),
                          bottomRight: Radius.circular(0.r))),
                  width: 189.w,
                  height: 160.h,
                  clipBehavior: Clip.antiAlias,
                  //child: cubit.model!.list[index];,
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                )
              ],
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.w,
              childAspectRatio: 189 / 300),
        ),
      ),
    );
  }
}