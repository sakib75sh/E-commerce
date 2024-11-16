// import 'package:e_commerce/src/presentation/screens/signup_screen.dart';
// import 'package:e_commerce/src/presentation/screens/splash_screen.dart';
import 'package:e_commerce/src/blocs/blocs.dart';
import 'package:e_commerce/src/presentation/widgets/full_width_button.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_pages.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../blocs/blocs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //part 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    Text(
                      'Please enter your data to continue',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                )
              ],
            ),
            Gap(MediaQuery.of(context).size.height * 0.2),

            //part 2
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Username'),
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.outlineVariant),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text('Password'),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .outlineVariant)),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            context.pushNamed(Routes.forgetPassEmail);
                          },
                          child: Text(
                            "Forget passowrd?",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.error),
                          )),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Remember me",
                      ),
                      BlocBuilder<RemamberSwitchCubit, RemamberSwitchState>(
                        builder: (context, state) {
                          return Switch(
                              value:
                                  state is SwitchChanged ? state.value : true,
                              onChanged: (value) {
                                context
                                    .read<RemamberSwitchCubit>()
                                    .switchToggle(value);
                              });
                        },
                      )
                    ],
                  )
                ],
              )),
            ),

            Gap(MediaQuery.of(context).size.height * 0.2),

            //part3

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "By connecting your account confirm that you agree",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "with our ",
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.outlineVariant),
                        ),
                        // TextButton(
                        //   onPressed: () {},
                        //   child: Text(
                        //     "Term and Condition",
                        //     style: TextStyle(fontWeight: FontWeight.w500),
                        //   ),
                        // ),
                        const Text(
                          "Term and Condition",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(
        buttontext: 'Login',
        onTap: () {
          context.pushNamed(Routes.home);
        },
      ),
    );
  }
}
