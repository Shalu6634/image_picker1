import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker1/screens/registrationform/Id_Card.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;

GlobalKey<FormState> formKey = GlobalKey();

TextEditingController txtName = TextEditingController();
TextEditingController txtLast = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtAddress = TextEditingController();


class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 7,
          centerTitle: true,
          title: const Text(
            'Registration Form',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 190,
                      width: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: (fileImage != null)
                            ? DecorationImage(
                                fit: BoxFit.cover, image: FileImage(fileImage!))
                            : const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://media.istockphoto.com/id/1451587807/vector/user-profile-icon-vector-avatar-or-person-icon-profile-picture-portrait-symbol-vector.jpg?s=612x612&w=0&k=20&c=yDJ4ITX1cHMh25Lt1vI1zBn2cAKKAlByHBvPJ8gEiIg=')),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60, left: 120),
                        child: IconButton(
                          onPressed: () async {
                            XFile? xfileImage = await imagePicker.pickImage(
                                source: ImageSource.camera);
      
                            setState(() {
                              fileImage = File(xfileImage!.path);
                            });
                          },
                          icon: Center(
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green),
                              child:const  Icon(
                                Icons.add,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    'Profile image',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10,),
                    box1(),
                    SizedBox(
                      width: 10,
                    ),
                    box2(),
                    SizedBox(height: 10,),
                  ],
                ),
      
                Container(
                  margin: EdgeInsets.all(15),
                  height: 60,
                  child: TextFormField(
                    controller: txtEmail,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        floatingLabelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 60,
                  child: TextFormField(
                    controller: txtPhone,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'phone number',
                        floatingLabelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Colors.black, width: 1))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 60,
                  child: TextFormField(
                    controller: txtAddress,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'address',
                        floatingLabelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            BorderSide(color: Colors.black, width: 1))),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                RadioListTile(
                    title: Text(
                      'Male',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: 'male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                RadioListTile(
                    title: Text(
                      'Female',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
                RadioListTile(
                    title: const Text(
                      'others',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: 'others',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
               const  Padding(
                  padding:  EdgeInsets.only(right: 290),
                  child: Text(
                    'Hobby`s',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                CheckboxListTile(
                    title:const  Text(
                      'C language',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: hobby,
                    onChanged: (value) {
                      setState(() {
                        hobby = value!;
                        if(value)
                        {
                          hobbyList.add('C language');
                        }
                        else
                        {
                          hobbyList.remove('C language');
                        }
                      });
                    }),
                CheckboxListTile(
                    title: const Text(
                      'CPP',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: hobby1,
                    onChanged: (value) {
                      setState(() {
                        hobby1 = value!;

                        if(value)
                        {
                          hobbyList.add('Cpp');
                        }
                        else
                        {
                          hobbyList.remove('Cpp');
                        }
                      });
                    }),
                CheckboxListTile(
                    title: const Text(
                      'Dart language',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    value: hobby2,
                    onChanged: (value) {
                      setState(() {
                        hobby2 = value!;
                        if(value)
                        {
                          hobbyList.add('Dart');
                        }
                        else
                        {
                          hobbyList.remove('Dart');
                        }
                      });
                    }),
                TextButton(onPressed: (){
                  
                 Navigator.of(context).pushNamed('/id');
                }, child: Text('Submit')),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container box2() {
    return Container(
      height: 60,
      width: 180,
      child: TextFormField(
        controller: txtLast,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: 'Last name',

            floatingLabelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 1))),
      ),
    );
  }

  Container box1() {
    return Container(
      width: 190,
      height: 60,
      child: TextFormField(
        controller: txtName,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            labelText: 'first name',
            floatingLabelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 1))),
      ),
    );
  }
}

int dropDown = 0;
String gender = 'male';
bool hobby = true;
bool hobby1 = true;
bool hobby2 = true;
