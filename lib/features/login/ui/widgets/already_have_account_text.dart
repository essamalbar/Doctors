import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'Already Have An account?',
            style: TextStyles.font13Gray300Wight),
        TextSpan(text: ' Sign Up', style: TextStyles.font14BlueRegural)
      ]),
    );
  }
}
