import 'package:flutter/material.dart';
import 'package:flutter_chat/core/constrants/app_assets_constants.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/feature/sign_up/presentation/widget/image_source_modal_bottom_sheet.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class SignUpImageWidget extends ConsumerStatefulWidget {
  const SignUpImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<SignUpImageWidget> createState() =>
      _RegistrationImageWidgetState();
}

class _RegistrationImageWidgetState extends ConsumerState<SignUpImageWidget> {
  Future<XFile?> _pickImage(ImageSource imageSource) {
    final imagePicker = ImagePicker();
    return imagePicker.pickImage(source: imageSource);
  }

  Future<void> _pickImageFrom(ImageSource imageSource) async {
    final file = await _pickImage(imageSource);
    if (file != null) {
      ref
          .read(registrationControllerProvider.notifier)
          .changeUserPhoto(file.path);
    }
  }

  Future<void> _showImagePickerBottomSheet(BuildContext context) async {
    FocusScope.of(context).unfocus();
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(maxWidth: context.fullWidth - 20),
      context: context,
      builder: (context) {
        return ImageSourceModalBottomSheet(
          chooseFromGalleryOnTap: () => _pickImageFrom(ImageSource.gallery),
          makePhotoOnTap: () => _pickImageFrom(ImageSource.camera),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userPhotoState = ref.watch(
        registrationControllerProvider.select((value) => value.photoFile));

    return IconButton(
      onPressed: () => _showImagePickerBottomSheet(context),
      iconSize: 125,
      icon: userPhotoState != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.file(
                  userPhotoState,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
          : SvgPicture.asset(AppAssets.appIcons.userIcon,
              width: 125, height: 125, color: context.customColors.iconColor1),
    );
  }
}
