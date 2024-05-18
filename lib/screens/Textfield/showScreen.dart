import 'package:flutter/material.dart';

import 'dynamic_txtfield.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Skills ',
            style: TextStyle(
                color: Colors.white,
              fontSize: 25,
            ),
          ),

          ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Center(child: Text('${skills}\n\n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),


          ],
        ),
      ),
    );
  }
}
