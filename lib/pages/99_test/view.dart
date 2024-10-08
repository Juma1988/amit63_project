import 'package:app/pages/99_test/cubit.dart';
import 'package:app/pages/99_test/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  final cubit = GetIt.instance<ShoppingAppCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
      ),
      extendBodyBehindAppBar: false,
      body: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            if (state is ShoppingAppSuccessScreen) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.h,
                      crossAxisSpacing: 12.w,
                      childAspectRatio: 189.w / 300.h),
                  itemCount: 6,
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
                                borderRadius: BorderRadius.circular(8.r)
                                    .copyWith(
                                        bottomLeft: Radius.circular(0.r),
                                        bottomRight: Radius.circular(0.r))),
                            width: 189.w,
                            height: 160.h,
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                                cubit.model.data[index].mainImage)),
                        Expanded(
                          child: Center(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.greenAccent,
                              child: Text('cell number '),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            }
          }),
    );
  }
}
