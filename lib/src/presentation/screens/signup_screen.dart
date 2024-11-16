import 'package:e_commerce/src/blocs/blocs.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../widgets/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Gap(MediaQuery.of(context).size.height * 0.2),
            BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) {
                if (state is SignupInitial) {
                  return Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: state.userNameController,
                            decoration: InputDecoration(
                                label: const Text("Username"),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant)),
                            validator: (value) {
                              if (value == '' || value == null) {
                                return 'Username is required';
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: state.passwordController,
                            decoration: InputDecoration(
                                label: const Text("Password"),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant)),
                            validator: (value) {
                              if (value == '' || value == null) {
                                return 'Password is required';
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: state.emailController,
                            decoration: InputDecoration(
                                label: const Text("Email Address"),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant)),
                            validator: (value) {
                              if (value == '' || value == null) {
                                return 'Email is required';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ],
                      ));
                } else {
                  return Container();
                }
              },
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Remeber me"),

                BlocBuilder<RemamberSwitchCubit, RemamberSwitchState>(
                  builder: (context, state) {
                    return Switch(
                        value: state is SwitchChanged ? state.value : true,
                        onChanged: (value) {
                          context
                              .read<RemamberSwitchCubit>()
                              .switchToggle(value);
                        });
                  },
                )

                // BlocBuilder<RemamberSwitchCubit, RemamberSwitchState>(
                //   builder: (context, state) {
                //     return Switch(
                //       value: state is SwitchChanged ? state.value : true,
                //       onChanged: (val) {
                //         context.read<RemamberSwitchCubit>().switchToggle(val);
                //         print(val);
                //       },
                //     );
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(
          onTap: () {
            if (formKey.currentState!.validate()) {
              context.pushNamed(Routes.home);
            } else {
              // print("invalid");
            }
          },
          buttontext: "Sign Up"),
    );
  }
}
