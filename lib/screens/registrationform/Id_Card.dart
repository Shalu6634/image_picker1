import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker1/screens/registrationform/RegistrationForm.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 860,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/idCard.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 30),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtv3UmJNfUs3wWKc7YV6Xl2-SyG66S92a55w3nGd80gWC8ZRrFpeeyQCij5CfeAF_v_9w&usqp=CAU')),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 450, left: 20),
                    child: Text(
                      'Name  :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 450, left: 20),
                    child: Text(
                      txtName.text + txtLast.text,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 500, left: 20),
                    child: Text(
                      'Id         :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500, left: 20),
                    child: Text(
                      '6634',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 550, left: 20),
                    child: Text(
                      'Email-Id :  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 550,
                    ),
                    child: Text(
                      txtEmail.text,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ],
              ), Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 650, left: 20),
                    child: Text(
                      'Skills :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...List.generate(
                    hobbyList.length,
                        (index) => Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 650, left: 20),
                          child: Text(
                            '${hobbyList[index]},',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 600, left: 20),
                    child: Text(
                      'Gender :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                        Padding(
                          padding: const EdgeInsets.only(top: 600, left: 20),
                          child: Text(
                           ' ${gender}',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 700, left: 20),
                    child: Text(
                      'Phone  : ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 700,
                    ),
                    child: Text(
                      txtPhone.text,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List hobbyList= [];
