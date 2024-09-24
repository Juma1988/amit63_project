import 'package:app/core/logic/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'model.dart';
import 'states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final DioHelper _dio;
  HomeCubit(this._dio) : super(HomeLoadingState());
  late SuggestionData model;

  Future<void> getData() async {
    final response = await _dio.get('jobs');
    if (response.isSuccess) {
      model = SuggestionData.fromJson(response.data);
      emit(HomeSuccessesState());
    } else {
      emit(HomeFailedState());
    }
  }
}
