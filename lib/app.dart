import 'package:e_commerce/src/blocs/blocs.dart';
import 'package:e_commerce/src/data/repository/repositores.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';

// ignore: unnecessary_import
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme/theme.dart';

class BlocEcommerceApp extends StatelessWidget {
  const BlocEcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [RepositoryProvider(create: (context) => AuthRepository())],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SplashCubit()..startSplash(),
            ),
            BlocProvider(
              create: (context) => RemamberSwitchCubit(),
            ),
            BlocProvider(
              create: (context) => SignupBloc(),
            ),
            BlocProvider(
              create: (context) => LoginBloc(context.read<AuthRepository>()),
            )
          ],
          child: ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MaterialApp.router(
                theme: const MaterialTheme(TextTheme()).light(),
                darkTheme: const MaterialTheme(TextTheme()).dark(),
                debugShowCheckedModeBanner: false,
                routerConfig: RoutePages.router,
              );
            },
          ),
        ));
  }
}
