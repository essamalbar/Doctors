import 'package:doctors/core/helpers/spacing.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:doctors/core/widgets/app_text_button.dart';
import 'package:doctors/core/widgets/app_text_form_field.dart';
import 'package:doctors/core/widgets/date_time_picker.dart';
import 'package:doctors/core/widgets/file_picker.dart';
import 'package:doctors/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    'We are excited to have you back, can not wait to see what you have been up to since you last logged in.',
                    style: TextStyles.font13Gray300Wight,
                  ),
                  verticalSpace(36),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: "Email"),
                        verticalSpace(16),
                        AppTextFormField(
                            hintText: "Password",
                            obsecure: isSecure,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSecure = !isSecure;
                                });
                              },
                              child: Icon(
                                isSecure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            )),
                        verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyles.font14BlueRegural,
                          ),
                        ),
                        verticalSpace(40),
                        AppTextButton(
                            onPressed: () {},
                            buttonText: 'Login',
                            buttonStyle: TextStyles.font16WhiteSemiBold),
                        verticalSpace(24),
                        const AlreadyHaveAccountText(),
                        verticalSpace(10),
                        const DateTimePickerWidget(),
                        verticalSpace(10),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to the file picker screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FilePickerExample()),
                            );
                          },
                          child: const Text('File Picker'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
