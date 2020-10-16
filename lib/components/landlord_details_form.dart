import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FormRowSectionCard extends StatelessWidget {
  final String title;
  final String value;

  const FormRowSectionCard({Key key, this.title, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(child: Text('$title', style: TextStyle(fontWeight: FontWeight.bold),)),
          Container(
            width: screenSize.width * 0.5,
            height: 35,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class LandlordDetailsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: 400,
      color: Colors.black26,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      padding: EdgeInsets.only(left: 10, right: 20, top: 15, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Name', style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                width: screenSize.width * 0.5,
                height: 35,
                color: Colors.white,
              )
            ],
          ),
          FormRowSectionCard(title: 'GSM',),
          FormRowSectionCard(title: 'Email',),
          FormRowSectionCard(title: 'Bank',),
          FormRowSectionCard(title: 'Account\nNumber',),
          FormRowSectionCard(title: 'Authority\nLetter',),
          FormRowSectionCard(title: 'Power of\nAttorney',),

        ],
      ),
    );
  }
}
