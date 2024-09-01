import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/01_on_boarding/02_on_board/view.dart';
import 'package:app/pages/03_login/cubit.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  final container = GetIt.instance;
  container.registerSingleton(DioHelper());
  container.registerFactory(() => LoginCubit());
}
