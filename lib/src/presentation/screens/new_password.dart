import 'package:e_commerce/src/presentation/widgets/widgets.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Password",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            Gap(MediaQuery.of(context).size.height * 0.25),
            // Gap(MediaQuery.of(context).size.height * 0.02),
            // Gap(MediaQuery.of(context).size.height * 0.06),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                      'New Password',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.outlineVariant),
                    )),
                  ),
                  const Gap(10),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(
                      'Confirm Password',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.outlineVariant),
                    )),
                  )
                ],
              ),
            ),
            Gap(MediaQuery.of(context).size.height * 0.32),
            const Text(
              'Please write your new password.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(
        buttontext: "Confirm Mail",
        onTap: () {
          context.pushNamed(Routes.home);
        },
      ),
    );
  }
}
