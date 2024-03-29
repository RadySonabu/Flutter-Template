import 'dart:io';

import 'package:app/features/camera/camera_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyCamera extends StatelessWidget {
  MyCamera({Key key}) : super(key: key);
  final CameraController controller = Get.put(CameraController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(() => controller.selectedImagePath.value == ''
                    ? Text('Select Image')
                    : Image.file(File(controller.selectedImagePath.value))),
                SizedBox(height: 10),
                FloatingActionButton(
                    onPressed: () {
                      controller.openCamera(ImageSource.camera);
                    },
                    child: Icon(Icons.camera))
              ],
            ),
          )),
    );
  }
}
