import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/material.dart';

class TenantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: bodyBackgroundThemeColor,
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.orangeAccent),
                backgroundColor: Colors.grey[900],
                title: Text('Tenant'),
                centerTitle: true,floating: true,
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                    ),
                    ),
                ),
                actions: [
                  Icon(Icons.cancel, color: Colors.orangeAccent,)
                ],
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    TenantCard(item: 'Location', itemDetails: 'banana highlander 30',),
                    TenantCard(item: 'Apartment Type', itemDetails: 'duplex Sky scraper',),
                    TenantCard(item: 'No of Rooms', itemDetails: '112 rooms',),
                    TenantCard(item: 'Facilities', itemDetails: 'water, electricity',),
                    TenantCard(item: 'Accommodation', itemDetails: 'no accommodation',),
                    TenantCard(item: 'Building Type', itemDetails: 'type S-class',),

                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class TenantCard extends StatelessWidget {
  final String item;
  final String itemDetails;

  const TenantCard({Key key, this.item, this.itemDetails}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(item, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.orangeAccent),),
          Spacer(flex: 2,),
          Text(itemDetails, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.orange),),
        ],),
    );
  }
}
