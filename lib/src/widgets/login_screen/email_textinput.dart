import 'package:flutter/material.dart';

import '../../constants/color_manager.dart';
import '../../constants/styles_manager.dart';

class EmailTextInput extends StatelessWidget {
  const EmailTextInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      style: TextStyles.getRegularStyle(color: ColorManager.textColorWhite),
      validator: (value) {
        return null;
      },
      onSaved: (newValue) {},
      cursorColor: ColorManager.textColorWhite,
      decoration: const InputDecoration(
        hintText: 'Email Address',
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManager.textColorWhite),
        ),
      ),
    );
  }
}
