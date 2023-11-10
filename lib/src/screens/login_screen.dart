import 'package:chatme/src/constants/fonts_manager.dart';
import 'package:chatme/src/constants/values_manager.dart';
import 'package:flutter/material.dart';

import '../constants/styles_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Size _size = Size.zero;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Center(
          child: SizedBox(
            height: _size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginTitlesWidget(),
                TextFormField(),
                TextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTitlesWidget extends StatelessWidget {
  const LoginTitlesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back!',
            style: TextStyles.getBoldStyle(
              color: const Color(0xffffffff),
              fontSize: FontSize.s20,
            ),
          ),
          Text(
            'Please login to your account.',
            style: TextStyles.getBoldStyle(color: const Color(0xffffffff)),
          ),
        ],
      ),
    );
  }
}
