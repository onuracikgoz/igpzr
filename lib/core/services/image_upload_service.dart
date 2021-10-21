// import 'dart:io';

// import 'package:blinck_app/core/base/base_repository.dart';
// import 'package:blinck_app/core/models/upload_image.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageUploadService extends BaseRepository {
//   ImageUploadService() {}

//   bool loading = false;

//   Future<String> imagePicker({bool fromGallery = false}) async {
//     loading = true;
//     try {
//       String imageUrl;
//       XFile? image;
//       if (fromGallery) {
//         image = (await ImagePicker().pickImage(source: ImageSource.gallery));
//       } else {
//         image = (await ImagePicker().pickImage(source: ImageSource.camera));
//       }
//       if (image != null) {
//         File? croppedFile = await ImageCropper.cropImage(
//             sourcePath: image.path,
//             aspectRatioPresets: [
//               CropAspectRatioPreset.square,
//               CropAspectRatioPreset.ratio3x2,
//               CropAspectRatioPreset.original,
//               CropAspectRatioPreset.ratio4x3,
//               CropAspectRatioPreset.ratio16x9
//             ],
//             androidUiSettings: const AndroidUiSettings(
//                 hideBottomControls: true,
//                 toolbarTitle: "Resmi Kırp",
//                 toolbarWidgetColor: Colors.white,
//                 initAspectRatio: CropAspectRatioPreset.original,
//                 lockAspectRatio: false),
//             iosUiSettings: const IOSUiSettings(
//               aspectRatioLockEnabled: true,
//               minimumAspectRatio: 1.0,
//               doneButtonTitle: "Tamam",
//               cancelButtonTitle: "Vazgeç",
//             ));
//         if (croppedFile != null) {
//           final String fileName = croppedFile.path.split("/").last;
//           final String name =
//               DateTime.now().millisecondsSinceEpoch.toString() + ".jpg";
//           final String fileName2 = croppedFile.path
//               .replaceAll(croppedFile.path.split("/").last, name);
//           var result = await FlutterImageCompress.compressAndGetFile(
//             croppedFile.path,
//             fileName2,
//             quality: 70,
//           );
//           print(croppedFile);
//           print(result?.path);
//           final FormData formData = FormData.fromMap({
//             "file": await MultipartFile.fromFile(result!.absolute.path),
//           });
//           imageUrl = await _uploadImage(formData);
//           return imageUrl;
//         }
//       }
//       return "";
//     } catch (e) {
//       rethrow;
//     } finally {
//       loading = false;
//     }
//   }

//   Future<String> _uploadImage(FormData formData) async {
//     try {
//       final result = await http.httpPost(
//           url: "General/UploadImage?profilePhoto", data: formData);

//       if (!result.hasError) {
//         final resUploadImageData = ResUploadImage.fromJson(result.data);
//         return resUploadImageData.url;
//       } else {
//         return "";
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
