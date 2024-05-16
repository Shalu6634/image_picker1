import 'package:flutter/material.dart';
import 'package:image_picker1/screens/ImagePicker/Imagepicker.dart';



void main()
{

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      routes: {
        '/':(context)=>ProfilePicture(),
      },
    );
  }
}
