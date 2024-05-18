import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicText extends StatefulWidget {
  const DynamicText({super.key});

  @override
  State<DynamicText> createState() => _DynamicTextState();
}

class _DynamicTextState extends State<DynamicText> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dynamic Textfield',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          backgroundColor: Colors.black,
          elevation: 8,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              txtControllerList.length,
              (index) => ListTile(
                title: TextField(
                  controller: txtControllerList[index],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
          
                    IconButton(
                      onPressed: () {
                        TextEditingController txtController =
                            TextEditingController();
                        setState(() {
                          txtControllerList.add(txtController);
                        });
                      },
                      icon: Icon(Icons.add_circle,color: Colors.grey,),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        txtControllerList.removeAt(index-1);
                      });
                    }, icon: Icon(Icons.close,color: Colors.red,))
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){

          setState(() {
            skills  = '';
            for(int i=0;i< txtControllerList.length;i++)
            {
              skills='$skills'  + '  '+'${ txtControllerList[i].text}';
            }
            // print(skills);
            Navigator.of(context).pushNamed('/show');
          });

        },child: Icon(Icons.shortcut,color: Colors.green,),)
        ,
      ),
    );
  }
}

String skills = '';
TextEditingController txtController = TextEditingController();
List<TextEditingController> txtControllerList = [txtController];

