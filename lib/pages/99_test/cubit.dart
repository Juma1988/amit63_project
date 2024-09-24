import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/99_test/model.dart';
import 'package:app/pages/99_test/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingAppCubit extends Cubit<ShoppingAppStates> {
  final DioHelper _dio;

  ShoppingAppCubit(this._dio) : super(ShoppingAppLoadingScreen());

  Future<void> getData() async {
    final response =
        await _dio.get('https://thimar.amr.aait-d.com/api/products');

    if (response.isSuccess) {
      final list = ProductData.fromJson(response.data);
      emit(ShoppingAppSuccessScreen());
    } else {
      emit(ShoppingAppFailedScreen());
    }
  }
}
