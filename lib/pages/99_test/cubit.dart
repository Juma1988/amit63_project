import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/99_test/model.dart';
import 'package:app/pages/99_test/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingAppCubit extends Cubit<ShoppingAppStates> {
  final DioHelper _dio;
  late final ProductData model;

  ShoppingAppCubit(this._dio) : super(ShoppingAppLoadingScreen());

  Future<void> getData() async {
    final response =
        await _dio.get('https://thimar.amr.aait-d.com/api/products');

    if (response.isSuccess) {
      emit(ShoppingAppSuccessScreen());
      model = ProductData.fromJson(response.data);
    } else {
      emit(ShoppingAppFailedScreen());
    }
  }
}
