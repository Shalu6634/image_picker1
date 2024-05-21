import 'package:flutter/material.dart';
import 'package:image_picker1/utils/routes.dart';


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
      routes: AppRoutes.routes,
    );
  }
}
