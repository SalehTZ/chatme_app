import 'package:flutter/material.dart';

import '../../constants/color_manager.dart';
import '../../constants/styles_manager.dart';

class PasswordTextInput extends StatelessWidget {
  const PasswordTextInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      style: TextStyles.getRegularStyle(color: ColorManager.textColorWhite),
      validator: (value) {
        return null;
      },
      onSaved: (newValue) {},
      cursorColor: ColorManager.textColorWhite,
      decoration: const InputDecoration(
        hintText: 'Password',
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManager.textColorWhite),
        ),
      ),
    );
  }
}
