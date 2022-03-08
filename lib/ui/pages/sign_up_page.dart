import 'package:airplane_2/ui/widgets/custom_button.dart';
import 'package:airplane_2/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
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
          hintText: 'Your fullname',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return CustomButton(
          nameButton: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus-page');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
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

    Widget termAndCondition() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, left: 50, bottom: 73),
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
            termAndCondition(),
          ],
        ),
      ),
    );
  }
}
