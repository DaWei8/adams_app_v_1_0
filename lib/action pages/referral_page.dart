import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: bodyBackgroundThemeColor,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Invite Your\nFriends',
                textAlign: TextAlign.center,
                style: TextStyle(
                  wordSpacing: 5,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              'Refer a friend and help them save money in a stress free way',
              textAlign: TextAlign.center,
              style: TextStyle(
                  wordSpacing: 2,
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                child: Text(
                  'Proceed',
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ReferralCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'Share with email',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          Container(
            child: TextFormField(
              autocorrect: true,
              onChanged: (value) {
                print(value);
              },
              style: TextStyle(
                color: Colors.orange,
                fontSize: 15,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 35,
            width: 350,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
