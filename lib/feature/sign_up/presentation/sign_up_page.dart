import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_app_bar.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_button_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_email_input_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_first_name_input_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_image_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_last_name_input_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_login_input_widget.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/sign_up_password_input_widget.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  void _listenRegistrationController(previous, next) {
    next.registrationProcessState.whenOrNull(
      success: _successProcessState,
    );
  }

  void _successProcessState() {
    ref
        .read(mainNavigatorControllerProvider.notifier)
        .popRoute(const MainNavigatorRoute.registrationRoute());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(registrationControllerProvider, _listenRegistrationController);

    return SafeArea(
      child: Scaffold(
        appBar: const SignUpAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  SignUpImageWidget(),
                  SignUpFirstNameWidget(),
                  SignUpLastNameWidget(),
                  SignUpEmailInputWidget(),
                  SignUpLoginInputWidget(),
                  SignUpPasswordInputWidget(),
                  SignUpButtonWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
