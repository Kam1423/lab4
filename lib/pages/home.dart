import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

String groupName = '';
bool Checked = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("App bar"),
      ),
      body:Column(
        children: [
          Text("TextFormField #1 Simple Text"),
          TextFormField(),
          Text("TextFormField #2 Password"),
          TextFormField(
            obscureText: true,
          ),
          Text("TextFormField #3 Decoration"),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(),
              labelText: 'This is LabelText',
              prefixIcon: Icon(Icons.mail),              
            ),
          ),

          Text('RadioListTile#1'),
          RadioListTile(
            title: Text('Item #1'),
            value: 'Item1',
            groupValue: groupName,
            onChanged: ((value) {
              setState(() {
                groupName = value!;
              });
            }
            ),
          ),
          RadioListTile(
            title: Text('Item #2'),
            value: 'Item2',
            groupValue: groupName,
            onChanged: ((value) {
              setState(() {
                groupName = value!;
              });
            }
            ),
          ),
          RadioListTile(
            title: Text('Item #3'),
            tileColor: Colors.blueGrey,
            value: 'Item3',
            groupValue: groupName,
            onChanged: ((value) {
              setState(() {
                groupName = value!;
              });
            }
            ),
          ),
          Text(groupName),

          Text('CheckboxListTile #1'),
          CheckboxListTile(
            title: Text('Libary Implementation'),
            value: Checked,
            onChanged: ((value) {
              setState(() {
                Checked = value!;
              });
            }
            ),
          ),
        ],
      )
    );
  }
}

