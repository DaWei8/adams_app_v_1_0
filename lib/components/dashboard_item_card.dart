import 'package:flutter/material.dart';

class DashboardItemCard extends StatelessWidget {
  final Icon icon;
  final String label;
  final Widget pageDestination;
  const DashboardItemCard({Key key, this.icon, @required this.label, @required this.pageDestination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => pageDestination));
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20,),
            icon,
            SizedBox(width: 30,),
            Text(label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),)
          ],
        ),
      ),
    );
  }
}
