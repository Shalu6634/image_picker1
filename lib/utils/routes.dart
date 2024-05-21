import 'package:flutter/material.dart';
import '../screens/ImagePicker/Imagepicker.dart';
import '../screens/Textfield/dynamic_txtfield.dart';
import '../screens/Textfield/showScreen.dart';
import '../screens/pdf/InvoiceScreen.dart';
import '../screens/pdf/PdfPage.dart';
import '../screens/registrationform/Id_Card.dart';
import '../screens/registrationform/RegistrationForm.dart';

class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes ={
    '/':(context)=>InvoiceScreen(),
    '/pdf':(context)=>PdfScreen(),
    '/registration':(context)=>const RegistrationForm(),
    '/profile':(context)=>const DynamicText(),
    '/show':(context)=>const ShowScreen(),
    '/id':(context)=>const IdCard(),
    '/p':(context)=>const ProfilePicture(),
  };
}