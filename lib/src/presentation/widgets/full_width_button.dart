import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../blocs/blocs.dart';

class FullWidthButton extends StatelessWidget {
  const FullWidthButton(
      {super.key,
      this.onTap,
      this.backgroundColor,
      this.textColor,
      required this.buttontext});

  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 65.h,
        color:
            backgroundColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
        child: Center(
          child: Text(
            buttontext,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: textColor ?? Theme.of(context).colorScheme.onSecondary,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
