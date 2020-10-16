import 'package:flutter/material.dart';



class DashboardFinanceItemCard extends StatelessWidget {
  final String label;
  final Widget pageDestination;
  const DashboardFinanceItemCard({Key key, @required this.label, @required this.pageDestination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => pageDestination));
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.66,
        padding: EdgeInsets.symmetric(vertical: 15.0),
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.black26,
            blurRadius: 10
          )],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),)
          ],
        ),
      ),
    );
  }
}