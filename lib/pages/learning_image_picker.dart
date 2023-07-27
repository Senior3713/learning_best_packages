import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LearningImagePicker extends StatefulWidget {
  const LearningImagePicker({super.key});

  @override
  State<LearningImagePicker> createState() => _LearningImagePickerState();
}

class _LearningImagePickerState extends State<LearningImagePicker> {
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          image == null
              ? Container()
              : Image(
            height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.fill,
                  image: FileImage(
                    File(image!.path),
                  ),
                ),
          MaterialButton(
            height: 70,
            color: Colors.green,
            onPressed: () async {
              image = await picker.pickImage(source: ImageSource.camera);
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Image",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(width: 20),
                const Icon(Icons.photo_album)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
