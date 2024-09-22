import 'package:app/pages/99_test/cubit.dart';
import 'package:flutter/material.dart';
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
        title: Text('Shopping App debug'),
      ),
      extendBodyBehindAppBar: false,
      body: GridView.builder(
        itemCount: cubit.model.list.length,
        itemBuilder: (context, index) => _item(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2),
      ),
    );
  }
}

class _item extends StatelessWidget {
  const _item();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 200,
      height: 100,
    );
  }
}
