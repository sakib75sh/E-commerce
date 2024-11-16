// import 'package:e_commerce/src/blocs/blocs.dart';
import 'package:e_commerce/src/blocs/blocs.dart';

import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:social_login_buttons/social_login_buttons.dart';

import '../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Get Started",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is LogininLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.facebook,
                          onPressed: () async {
                            context
                                .read<LoginBloc>()
                                .add(FacebookLoginRequest());
                          }),
                      const Gap(20),
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.github,
                          onPressed: () {
                            // signInWithGithub(con);
                            // context.read<LoginBloc>().add(GithubLoginRequest());
                          }),
                      const Gap(20),
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.google,
                          onPressed: () async {
                            context.read<LoginBloc>().add(GoogleLoginRequest());
                          }),
                    ],
                  ),
                );
              },
            ),
            //
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 17),
            //   child: Column(
            //     children: [
            //       SocialLoginButton(
            //           buttonType: SocialLoginButtonType.facebook,
            //           onPressed: () {}),
            //       const Gap(20),
            //       SocialLoginButton(
            //           buttonType: SocialLoginButtonType.twitter,
            //           onPressed: () {}),
            //       const Gap(20),
            //       SocialLoginButton(
            //           buttonType: SocialLoginButtonType.google,
            //           onPressed: () {}),
            //     ],
            //   ),
            // ),

            //k
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    TextButton(
                        onPressed: () => context.pushNamed(Routes.loginRoute),
                        child: const Text('Signin'))
                  ],
                ),
                FullWidthButton(
                  onTap: () => context.pushNamed(Routes.registerRoute),
                  // backgroundColor:
                  //     Theme.of(context).colorScheme.onPrimaryContainer,
                  buttontext: "Create an Account",
                  // textColor: Theme.of(context).colorScheme.onSecondary,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
