import 'dart:typed_data';

import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/utility.dart';
import '../../../../widget/commonImageview.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget(
      {Key? key, required this.size, required this.onboardingBloc})
      : super(key: key);
  final double size;
  final OnboardingBloc onboardingBloc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<OnboardingBloc, OnboardingState>(
          bloc: onboardingBloc,
          builder: (context, state) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: size,
                width: size,
                padding: state.pickedProfilePic.isEmpty
                    ? const EdgeInsets.all(40)
                    : const EdgeInsets.all(0),
                color: AppColor.skyBlueShade.val,
                child: state.pickedProfilePic.isEmpty
                    ? CommonImageView(
                        svgPath: IMG.userAvatar.val,
                      )
                    : CommonImageView(
                        bytes: state.pickedProfilePic,
                        fit: BoxFit.cover,
                        isCircleImage: false,
                      ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: InkWell(
            onTap: () async {
              XFile? pickedFileData = (await Utility.getFromGallery())!;
              Uint8List bytes = await pickedFileData.readAsBytes();
              onboardingBloc.add(OnboardingEvent.profilePicSelection(bytes));
              print(
                  "pickedFileData in profilepicwidget ${pickedFileData.path}");
              onboardingBloc.profileUrl = pickedFileData.path;
            },
            child: Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: AppColor.darkBlue.val,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: CommonImageView(
                  svgPath: IMG.cameraIcon.val,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
