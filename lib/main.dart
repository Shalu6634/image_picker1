import 'package:flutter/material.dart';
import 'package:image_picker1/screens/ImagePicker/Imagepicker.dart';
import 'package:image_picker1/screens/Textfield/dynamic_txtfield.dart';
import 'package:image_picker1/screens/Textfield/showScreen.dart';
import 'package:image_picker1/screens/registrationform/Id_Card.dart';
import 'package:image_picker1/screens/registrationform/RegistrationForm.dart';



void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      routes: {
        '/registration':(context)=>const RegistrationForm(),
        '/':(context)=>DynamicText(),
        '/show':(context)=>ShowScreen(),
        '/id':(context)=>IdCard(),
        '/profile':(context)=>const ProfilePicture(),
      },
    );
  }
}
