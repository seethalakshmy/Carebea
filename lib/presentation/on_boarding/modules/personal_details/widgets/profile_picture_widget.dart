import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/enum.dart';
import '../../../../widget/commonImageview.dart';

class ProfilePictureWidget extends StatelessWidget {
  ProfilePictureWidget(
      {Key? key, required this.size, required this.onboardingBloc})
      : super(key: key);
  final double size;
  final OnboardingBloc onboardingBloc;
  PlatformFile file = PlatformFile(name: "", size: 0);

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
                padding: state.pickedProfilePic!.name.isEmpty
                    ? const EdgeInsets.all(40)
                    : const EdgeInsets.all(0),
                color: AppColor.skyBlueShade.val,
                child: state.pickedProfilePic!.name.isEmpty
                    ? CommonImageView(
                        svgPath: IMG.userAvatar.val,
                      )
                    : CommonImageView(
                        bytes: state.pickedProfilePic!.bytes,
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
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'png', 'jpeg'],
                withData: true,
              );
              if (result != null) {
                file = result.files.single;
              } else {}

              onboardingBloc.add(OnboardingEvent.profilePicSelection(file));
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
