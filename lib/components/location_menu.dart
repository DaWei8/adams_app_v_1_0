import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PropertyLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[900],
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5),
                  child: Text('Location', style: TextStyle(
                      color: Colors.orange,
                      fontSize: 22),)
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                      padding: EdgeInsets.all(5),
                  child: Text('Area Code', style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18),)
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    color: Colors.grey,
                    child: DropDown(contextList: areaCodes, hintText: 'select area code',)
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      padding: EdgeInsets.all(5),
                  child: Text('State', style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18),)
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    color: Colors.grey,
                    child: DropDown(contextList: states, hintText: 'select state',)
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      padding: EdgeInsets.all(5),
                  child: Text('City', style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18),)
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    color: Colors.grey,
                    child: DropDown(contextList: cities, hintText: 'select city',)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DropDown extends StatefulWidget {

  final List contextList;
  final String hintText;

  const DropDown({Key key, this.contextList, this.hintText}) : super(key: key);
  @override
  _DropDownState createState() => _DropDownState(this.contextList, this.hintText);
}

class _DropDownState extends State<DropDown> {
  final List contextList;
  final String hintText;
  String selectedItem;
  String currentSelection;

  _DropDownState(this.contextList, this.hintText);

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField(
      decoration : InputDecoration(
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          counterStyle: TextStyle(color: Colors.blueAccent),
          filled: true,
          hintText: '$hintText'
      ),
      elevation: 10,
      dropdownColor: Colors.white,
    items:
      contextList.map((selection){
        return DropdownMenuItem(
          value: selection,
          child: Text('$selection', style: TextStyle(color: Colors.orange),),
          onTap: () {
            setState(() {
              selectedItem = '$selection';
            });
          },
        );
      }).toList(),
    onChanged: (context) {
        setState(() {
          print(selectedItem);
        });
    },

    );
  }
}

List states = [
 "Ondo",
 "Ose",
 "Ekiti",
 "Akure",
];
List cities = [
 "Ibadan",
 "Ose",
 "Ado",
 "Akure",
];

List areaCodes = [
  1234, 1627, 4279, 2982, 2002, 2727, 2024, 5162, 2932
];