import 'package:airpane/ui/widgets/custom_button.dart';
import 'package:airpane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:airpane/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
        );
      }

      Widget submitButton() {
        return Center(
          child: CustomButton(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/bonus',
              );
            },
          ),
        );
      }

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultMargin,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
