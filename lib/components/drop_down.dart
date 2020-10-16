import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  String currentName;
  String currentSugars;
  String selectedSugar;
  int currentStrength;
  bool onPressed = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            'Update your brew settings',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              counterStyle: TextStyle(color: Colors.redAccent),
              filled: true,
              focusColor: Colors.grey,
              hintText: 'Enter your Name'
            ),
//            validator: (context) => context.isEmpty ? 'Please enter a name': null,
            onChanged: (context) => setState(() {
              currentName = context;
            }),
          ),
          SizedBox(height: 20,),
          DropdownButtonFormField(
            decoration : InputDecoration(
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                counterStyle: TextStyle(color: Colors.redAccent),
                filled: true,
                hintText: 'Select Sugars'
            ),
              elevation: 10,
              items: sugars.map((sugar){
                return DropdownMenuItem(
                  value: sugar,
                  child: Text('$sugar sugars', style: TextStyle(color: Colors.orange),),
                  onTap: () {
                    setState(() {
                      selectedSugar = '$sugar';
                    });
                  },
                );
              }).toList(),
              onChanged: (context) => setState(() {
                currentSugars = selectedSugar;
                }),
            dropdownColor: Colors.grey[100],
            hint: Text('Click here'),

          ),
          //Update your screen
          RaisedButton(
              color: Colors.pink[400],
              child: Text('Update',
              style: TextStyle(color: Colors.white),),
              onPressed: () async {
                setState(() {
                  onPressed = currentName == '' ? false: true;
                });
                print(onPressed);
                print(currentName);
                print(currentSugars);
                print(currentStrength);
              })
        ],
      ),
    );
  }
}
