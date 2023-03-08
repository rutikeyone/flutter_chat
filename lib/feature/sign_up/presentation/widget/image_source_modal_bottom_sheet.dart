import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/generated/l10n.dart';

class ImageSourceModalBottomSheet extends StatelessWidget {
  final VoidCallback chooseFromGalleryOnTap;
  final VoidCallback makePhotoOnTap;

  const ImageSourceModalBottomSheet({
    Key? key,
    required this.chooseFromGalleryOnTap,
    required this.makePhotoOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 262,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: context.customColors.modalBottomSheet1,
                borderRadius: BorderRadius.circular(12)),
            width: MediaQuery.of(context).size.width - 8,
            height: 172,
            child: Column(
              children: [
                const _ImageWidget(),
                const Divider(thickness: 1, height: 1),
                _ChooseFromGalleryWidget(
                  onTap: () {
                    Navigator.of(context).pop();
                    chooseFromGalleryOnTap();
                  },
                ),
                const Divider(thickness: 1, height: 1),
                _MakePhotoWidget(
                  onTap: () {
                    Navigator.of(context).pop();
                    makePhotoOnTap();
                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: _CancelButtonWidget(),
          ),
        ],
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.fullWidth,
      height: 42,
      child: Text(S.of(context).image,
          style: context.customTextStyles.titleHeaderModalBottomSheetStyle1),
    );
  }
}

class _ChooseFromGalleryWidget extends StatelessWidget {
  final VoidCallback onTap;

  const _ChooseFromGalleryWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Center(
            child: Text(S.of(context).choose_from_the_library,
                style:
                    context.customTextStyles.titleHeaderModalBottomSheetStyle2),
          ),
        ),
      ),
    );
  }
}

class _MakePhotoWidget extends StatelessWidget {
  final VoidCallback onTap;

  const _MakePhotoWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Center(
              child: Text(S.of(context).take_a_photo,
                  style: context
                      .customTextStyles.titleHeaderModalBottomSheetStyle2)),
        ),
      ),
    );
  }
}

class _CancelButtonWidget extends StatelessWidget {
  const _CancelButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => Navigator.of(context).pop(),
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Center(
              child: Text(S.of(context).cancel,
                  style: context
                      .customTextStyles.titleHeaderModalBottomSheetStyle2)),
        ),
      ),
    );
  }
}
