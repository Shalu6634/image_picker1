import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';



class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;


class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.black38),
        backgroundColor: Colors.blue,
        title: const Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(30),
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                image: (fileImage != null)
                    ? DecorationImage(
                    fit: BoxFit.cover, image: FileImage(fileImage!))
                    : const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1451587807/vector/user-profile-icon-vector-avatar-or-person-icon-profile-picture-portrait-symbol-vector.jpg?s=612x612&w=0&k=20&c=yDJ4ITX1cHMh25Lt1vI1zBn2cAKKAlByHBvPJ8gEiIg=')),
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async {
                  XFile? xfileImage =
                  await imagePicker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    fileImage = File(xfileImage!.path);
                  });
                },
                icon: const Icon(
                  Icons.image,
                  size: 60,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () async {
                  XFile? xfileImage =
                  await imagePicker.pickImage(source: ImageSource.camera);

                  setState(() {
                    fileImage = File(xfileImage!.path);
                  });
                },
                icon: const Icon(
                  Icons.camera_alt,
                  size: 60,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            child: const Center(
                child: Text(
                  'Upload me',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          )
        ],
      ),
    );
  }
}
