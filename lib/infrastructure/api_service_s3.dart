import 'dart:typed_data';

import 'package:admin_580_tech/core/enum.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';

import '../core/custom_snackbar.dart';

class ApiServiceS3 {
  late final uploadResult;
  Future<String> uploadImage(
      {required Uint8List pickedFile,
      required String folderName,
      required String format,
      required String userId,
      required BuildContext context}) async {
    try {
      int timestamp = DateTime.now().millisecondsSinceEpoch;
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromData(
          pickedFile,
          contentType: "*/*",
        ),
        key: '$folderName/$userId/$timestamp.$format',
        onProgress: (progress) {
          print('Fraction completed: ${progress.fractionCompleted}');
        },
      ).result;
      uploadResult = result.uploadedItem.key;
      print('Successfully uploaded file: ${result.uploadedItem.key}');
    } on StorageException catch (e) {
      print('Error uploading file: $e');
      CSnackBar.showError(context, msg: AppString.errorUploadingFile.val);
      rethrow;
    }
    return uploadResult;
  }
}
