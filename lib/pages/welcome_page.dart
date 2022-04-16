import 'package:ajuda_ai/pages/login_page.dart';
import 'package:ajuda_ai/resources/color.dart';
import 'package:flutter/material.dart';

import '../resources/strings.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              child: Text(
                Strings.welcomeH1,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Image(
              image: AssetImage('images/cover.png'),
              fit: BoxFit.contain,
              height: 235.0,
            ),
            const SizedBox(
              child: Text(
                Strings.welcomeH2,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              child: Container(
                width: 55.0,
                height: 55.0,
                child: const Icon(
                  Icons.navigate_next_rounded,
                  size: 40.0,
                  color: AppColors.backgroundColor,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(_welcomeRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}

Route _welcomeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
