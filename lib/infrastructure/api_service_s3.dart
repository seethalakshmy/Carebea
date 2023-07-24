import 'dart:html';
import 'dart:io';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:file_picker/file_picker.dart';

class ApiServiceS3 {
  Future<void> uploadImage({required PlatformFile pickedFile}) async {
    // Select a file from the device
    // final result = await FilePicker.platform.pickFiles(
    //   type: FileType.custom,
    //   withData: false,
    //   // Ensure to get file stream for better performance
    //   withReadStream: true,
    //   allowedExtensions: ['jpg', 'png', 'gif'],
    // );
    //
    // if (result == null) {
    //   safePrint('No file selected');
    //   return;
    // }

    // Upload file with its filename as the key
    //final platformFile = pickedFile.files.single;
    try {
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromStream(
          pickedFile.readStream!,
          size: pickedFile.size,
        ),
        key: pickedFile.name,
        onProgress: (progress) {
          safePrint('Fraction completed: ${progress.fractionCompleted}');
        },
      ).result;
      safePrint('Successfully uploaded file: ${result.uploadedItem.key}');
    } on StorageException catch (e) {
      safePrint('Error uploading file: $e');
      rethrow;
    }
  }
}
