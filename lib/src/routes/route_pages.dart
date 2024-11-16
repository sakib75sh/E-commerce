import 'package:e_commerce/src/presentation/screens/forget_pass_code.dart';
import 'package:e_commerce/src/presentation/screens/forget_pass_email.dart';
import 'package:e_commerce/src/presentation/screens/new_password.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/screens.dart';

part 'routes.dart';

class RoutePages {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        name: Routes.splashScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SplashScreen()),
      ),
      GoRoute(
        path: Routes.welcomeScreen,
        name: Routes.welcomeScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: WelcomeScreen()),
      ),
      GoRoute(
          path: Routes.loginRoute,
          name: Routes.loginRoute,
          pageBuilder: (context, state) =>
              const MaterialPage(child: LoginScreen())),
      GoRoute(
        path: Routes.forgetPassEmail,
        name: Routes.forgetPassEmail,
        pageBuilder: (context, state) =>
            const MaterialPage(child: ForgetPassEmail()),
      ),
      GoRoute(
        path: Routes.forgetPassCode,
        name: Routes.forgetPassCode,
        pageBuilder: (context, state) =>
            const MaterialPage(child: ForgetPassCode()),
      ),
      GoRoute(
        path: Routes.newPassword,
        name: Routes.newPassword,
        pageBuilder: (context, state) =>
            const MaterialPage(child: NewPassword()),
      ),
      GoRoute(
          path: Routes.registerRoute,
          name: Routes.registerRoute,
          pageBuilder: (context, state) =>
              const MaterialPage(child: SignupScreen())),
      ShellRoute(
        builder: (context, state, child) => Wrapper(child: child),
        routes: [
          GoRoute(
              path: Routes.home,
              name: Routes.home,
              pageBuilder: (context, state) =>
                  const MaterialPage(child: HomeScreen()))
        ],
      ),
    ],
  );
}
