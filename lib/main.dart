import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get_navigation/get_navigation.dart' as nav;
import 'bloc/password_validation_bloc.dart';
import 'core/providers/routes_provider.dart';
import 'core/utils/app_constants.dart';
import 'core/widgets/themes/app_theme.dart';

import 'core/widgets/themes/theme_mode.dart';
import 'injection_container.dart' as inject_con;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inject_con.init();
  await Hive.initFlutter();
  await Hive.openBox(AppConstants.appLocalDb);
  // To solve CERTIFICATE_VERIFY_FAILED
  HttpOverrides.global = MyHttpOverrides();

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => inject_con.sl<PasswordValidationBloc>()),
      
      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: GetMaterialApp(
                navigatorKey: Get.key,
                enableLog: true,
                defaultTransition: nav.Transition.cupertino,
                title: 'Djossi',
                debugShowCheckedModeBanner: false,
                theme: Appthemes.lightThemeData(context),
                darkTheme: Appthemes.darkThemeData(context),
                themeMode: AppThemeMode.themeMode,
                initialRoute: RoutesProvider.intro,
                getPages: RoutesProvider.routes,
                navigatorObservers: const [],
              ),
            );
          }),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

