import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.1;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: padding),
        children: [
          Container(
            width: size.width * 0.4,
            height: size.height * 0.1,
            margin: EdgeInsets.only(
              top: size.height * 0.1,
              bottom: size.height * 0.05,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo.png'),
              ),
            ),
          ),
          Text(
            'Forgot Your Password?',
            style: blackTextstyle.copyWith(
              fontSize: size.width * 0.05,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter your email address and we\'ll send you a link to reset your password.',
            style: greyTextstyle.copyWith(
              fontSize: size.width * 0.04,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(size.width * 0.05),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * EMAIL INPUT
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Send Reset Link',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Back to Sign In',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
