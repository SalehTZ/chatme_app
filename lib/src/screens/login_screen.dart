import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/fonts_manager.dart';
import '../constants/styles_manager.dart';
import '../widgets/common_widgets/custom_button.dart';
import '../widgets/login_screen/login_form.dart';
import '../widgets/login_screen/login_titles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Size _size = Size.zero;
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size.width * 0.1),
        child: Center(
          child: SizedBox(
            height: _size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginTitlesWidget(),
                LoginFormWidget(formKey: _formKey),
                CustomButton(
                  onTap: () {},
                  color: ColorManager.accentColor,
                  child: SizedBox(
                    width: _size.width,
                    height: _size.height * 0.06,
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyles.getSemiBoldStyle(
                          fontSize: FontSize.s18,
                          color: ColorManager.textColorWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  child: SizedBox(
                    width: _size.width,
                    height: _size.height * 0.06,
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyles.getSemiBoldStyle(
                          fontSize: FontSize.s14,
                          color: ColorManager.textColorWhite.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
