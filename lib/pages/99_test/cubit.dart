import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/99_test/model.dart';
import 'package:app/pages/99_test/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ShoppingAppCubit extends Cubit {
  ShoppingAppCubit() : super(ShoppingAppInitScreen()) {}
  final dio = GetIt.instance<DioHelper>();
  late ProductData model;

  Future<void> getData() async {
    emit(ShoppingAppLoadingScreen());
    final response =
        await dio.get('https://thimar.amr.aait-d.com/api/products');
    if (response.isSuccess) {
      model = ProductData.fromJson(response.data);
      emit(ShoppingAppSuccessScreen());
    } else {
      emit(ShoppingAppFailedScreen());
    }
  }
}
