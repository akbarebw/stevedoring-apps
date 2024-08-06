import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: size.width * 0.4,
          height: size.height * 0.1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
