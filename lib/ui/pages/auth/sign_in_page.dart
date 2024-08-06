import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
              bottom: size.height * 0.1,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo.png'),
              ),
            ),
          ),
          Text(
            'Welcome &\nBack!',
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
                  height: size.height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot-password');
                    },
                    child: Text(
                      'Forgot Password',
                      style: blueTextstyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                CustomFilledButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          CustomTextButton(
            title: 'Create New Account',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
        ],
      ),
    );
  }
}
