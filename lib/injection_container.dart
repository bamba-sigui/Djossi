import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'bloc/password_validation_bloc.dart';
import 'core/platform/network/network_info.dart';
import 'core/providers/hive_helper.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// `App Features`

  sl.registerFactory(() => PasswordValidationBloc());
 


  /// `Use Case`
  //USECASES PARTICULIER
 


  /// `Repository`
  

  /// `Data Source`
  
  
  /// `Core`
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));


  /// `Provider`
  sl.registerLazySingleton(() => HiveHelper(hive: sl()));

  /// `External`
  final Dio dio = Dio();
  final HiveInterface hive = Hive;
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => hive);
}
