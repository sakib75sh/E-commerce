import 'package:e_commerce/src/presentation/widgets/full_width_button.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:e_commerce/src/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgetPassEmail extends StatelessWidget {
  const ForgetPassEmail({super.key});

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
              "Forget Password",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            Gap(MediaQuery.of(context).size.height * 0.02),
            SvgPicture.asset(AssetManager.authLock),
            Gap(MediaQuery.of(context).size.height * 0.06),
            Form(
                child: TextFormField(
              decoration: InputDecoration(
                  label: Text(
                'Email Address',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.outlineVariant),
              )),
            )),
            Gap(MediaQuery.of(context).size.height * 0.284),
            const Text(
              'Please write your email to receive a confirmation code to set a new password.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(
        buttontext: "Confirm Mail",
        onTap: () {
          context.pushNamed(Routes.forgetPassCode);
        },
      ),
    );
  }
}
