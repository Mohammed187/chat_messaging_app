import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SignUpSignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/images/Logo_light.png'
                  : 'assets/images/Logo_dark.png',
              height: 146,
            ),
            Spacer(flex: 2),
            PrimaryButton(
              text: 'Sign In',
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatsScreen(),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            PrimaryButton(
              color: Theme.of(context).colorScheme.secondary,
              text: 'Sign Up',
              press: () {},
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
