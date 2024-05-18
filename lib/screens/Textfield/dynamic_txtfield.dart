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
                  decoration: InputDecoration(
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
                      icon: Icon(Icons.add_circle),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        txtControllerList.removeAt(index-1);
                      });
                    }, icon: Icon(Icons.close))
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){

          String skills = txtController.text;
      
          for(int i=1; i<txtControllerList.length; i++)
            {
              skills = skills + " "+ txtControllerList[i].text;
            }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skills} ${txtControllerList[1].text}'),),);
      
        },child: Icon(Icons.shortcut),),
      ),
    );
  }
}

TextEditingController txtController = TextEditingController();
List<TextEditingController> txtControllerList = [txtController];
