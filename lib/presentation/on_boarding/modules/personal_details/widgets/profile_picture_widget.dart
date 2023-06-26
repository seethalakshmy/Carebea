import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/utility.dart';
import '../../../../widget/commonImageview.dart';

class ProfilePictureWidget extends StatefulWidget {
  ProfilePictureWidget({Key? key, required this.size}) : super(key: key);
  double size;

  @override
  State<ProfilePictureWidget> createState() => _ProfilePictureWidgetState();
}

class _ProfilePictureWidgetState extends State<ProfilePictureWidget> {
  dynamic pickedFile = "";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: widget.size,
            width: widget.size,
            padding: const EdgeInsets.all(40),
            color: AppColor.skyBlueShade.val,
            child: pickedFile == "" || pickedFile!.isEmpty
                ? CommonImageView(
                    svgPath: IMG.userAvatar.val,
                  )
                : CommonImageView(
                    url: pickedFile!,
                    fit: BoxFit.cover,
                    isCircleImage: false,
                  ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: InkWell(
            onTap: () async {
              XFile? pickedFileData = (await Utility.getFromGallery())!;
              print("pickedFileData : " + pickedFileData.path);
              /*setState(() {
                pickedFile = pickedFileData.readAsBytes();
                print("pickedFile : " + pickedFile.toString());
              });*/
              setState(() {
                pickedFile = pickedFileData.path.replaceAll("blob:", "");
                print("pickedFile : " + pickedFile!);
              });
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
