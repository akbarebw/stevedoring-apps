import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            'Create \nYour Account',
            style: blackTextstyle.copyWith(
              fontSize: size.width * 0.05,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
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
                // * FULLNAME INPUT
                const CustomFormField(
                  title: 'Full Name',
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // * EMAIL INPUT
                const CustomFormField(
                  title: 'Email Address',
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // * PASSWORD INPUT
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
        ],
      ),
    );
  }
}
