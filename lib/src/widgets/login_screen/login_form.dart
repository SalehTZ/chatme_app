import 'package:flutter/material.dart';

import 'email_textinput.dart';
import 'password_textinput.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.16,
      child: Form(
        key: formKey,
        onChanged: () {},
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmailTextInput(),
            PasswordTextInput(),
          ],
        ),
      ),
    );
  }
}
