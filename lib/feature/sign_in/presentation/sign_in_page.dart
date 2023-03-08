import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_app_bar.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_email_input_widget.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_image_widget.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_login_button.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_password_input_widget.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_with_facebook_button.dart';
import 'package:flutter_chat/feature/sign_in/presentation/widget/sign_in_with_google_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const SignInAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SignInImageWidget(),
                  SignInEmailInputWidget(),
                  SignInPasswordInputWidget(),
                  SignInLoginButton(),
                  SignInWithGoogleButton(),
                  SignInWithFacebookButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
