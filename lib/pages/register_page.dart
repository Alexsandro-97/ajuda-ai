import 'package:ajuda_ai/components/button_custom.dart';
import 'package:ajuda_ai/components/input_custom.dart';
import 'package:ajuda_ai/pages/login_page.dart';
import 'package:ajuda_ai/resources/color.dart';
import 'package:flutter/material.dart';

import '../resources/strings.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;

  void onTapIcon() {
    setState(() => obscureText = !obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('images/logo.png'),
                  height: 170.0,
                  width: 136.0,
                ),
                const SizedBox(height: 30.0),
                const InputCustom(
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  hintText: Strings.typeName,
                  prefixIcon: Icons.account_circle_outlined,
                ),
                const SizedBox(height: 21.0),
                const InputCustom(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: Strings.typeEmail,
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 21.0),
                InputCustom(
                  obscureText: obscureText,
                  hintText: Strings.typePassword,
                  prefixIcon: Icons.lock,
                  sufixIcon: GestureDetector(
                    onTap: onTapIcon,
                    child: obscureText
                        ? const Icon(
                            Icons.visibility,
                            color: AppColors.primaryColor,
                            size: 30.0,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: AppColors.primaryColor,
                            size: 30.0,
                          ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 21.0),
                ButtonCustom(
                  text: 'CADASTRAR',
                  action: () =>
                      Navigator.of(context).pushReplacementNamed('/homePage'),
                ),
                const SizedBox(height: 21.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(Strings.nowSignIn),
                    const SizedBox(width: 10.0),
                    GestureDetector(
                      child: const Text(
                        Strings.signIn,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.of(context).pop(_registerRoute());
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

Route _registerRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -1.0);
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
