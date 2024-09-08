import 'package:app/core/logic/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'model.dart';
import 'states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLoadingState());
  final dio = GetIt.instance<DioHelper>();
  late SuggestionData model;

  Future<void> getData() async {
    final response = await dio.get('jobs');
    if (response.isSuccess) {
      emit(HomeSuccessesState());
      final model = SuggestionData.fromJson(response.data);
    } else {
      emit(HomeFailedState());
    }
  }
}
