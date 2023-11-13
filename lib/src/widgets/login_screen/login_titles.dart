import 'package:flutter/material.dart';

import '../../constants/fonts_manager.dart';
import '../../constants/styles_manager.dart';

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
