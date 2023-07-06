import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'enum.dart';

class Utility {
  static Future<XFile?> getFromGallery() async {
    XFile? pickedGalleryFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedGalleryFile != null) {
      print("size  : ${await pickedGalleryFile.length()}");
      if (await pickedGalleryFile.length() > INT.MAX_FILE_SIZE.val) {
        print("size  : ${await pickedGalleryFile.length()}");
        //showErrorSnackBar(LocaleKeys.maximum_file_size_msg.tr);
        return null;
      }
      //File file = File(pickedGalleryFile.path);
      return Future.value(pickedGalleryFile);
    } else {
      return null;
    }
  }

  static Future<String> selectDate(BuildContext context) async {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1940),
        lastDate: DateTime(DateTime.now().year - 18));

    String selectedDate = formatter.format(picked!);
    return selectedDate;
  }
}
