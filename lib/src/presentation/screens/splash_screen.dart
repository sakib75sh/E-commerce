import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce/src/utils/asset_manager.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../blocs/blocs.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashEnd) {
            context.goNamed(Routes.welcomeScreen);
            // context.goNamed(Routes.welcomeScreen);
          }
        },
        child: Center(
          child: SvgPicture.asset(
            AssetManager.logo,
            height: 70.h,
            width: 80.w,
          ),
        ),
      ),
    );
  }
}
