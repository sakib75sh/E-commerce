import 'package:e_commerce/src/presentation/widgets/full_width_button.dart';
import 'package:e_commerce/src/routes/route_pages.dart';
import 'package:e_commerce/src/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class ForgetPassCode extends StatelessWidget {
  const ForgetPassCode({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 75,
      width: 65,
      textStyle:
          TextStyle(fontSize: 22, color: Theme.of(context).colorScheme.scrim),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(10)),
    );

    return Scaffold(
      appBar: AppBar(),
      body:
          // Container(
          //   color: Colors.amber,
          // ),
          SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Verification Code",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            Gap(MediaQuery.of(context).size.height * 0.02),
            SvgPicture.asset(AssetManager.authLock),
            Gap(MediaQuery.of(context).size.height * 0.06),

            //varification Code

            Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!
                      .copyWith(border: Border.all(color: Colors.blueAccent))),
            ),

            //varification Code

            Gap(MediaQuery.of(context).size.height * 0.27),
            const Text(
              '00:20 resend confirmation code.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(
        buttontext: "Confirm Code",
        onTap: () {
          context.pushNamed(Routes.newPassword);
        },
      ),
    );
  }
}
