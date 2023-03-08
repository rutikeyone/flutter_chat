import 'package:flutter/material.dart';
import 'package:flutter_chat/core/constrants/app_assets_constants.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInImageWidget extends StatelessWidget {
  const SignInImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.appIcons.chatIcon,
        width: 125, height: 125, color: context.customColors.iconColor1);
  }
}
