import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adams_app_v_1_0/components/location_menu.dart';
import 'package:adams_app_v_1_0/models/property_information.dart';

class PropertyCodePage extends StatelessWidget {

  final PropertyInfo propertyInfo;
  const PropertyCodePage({Key key, this.propertyInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: bodyBackgroundThemeColor,
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(propertyInfo.propertyCode, style: TextStyle(color: Colors.black),),
                centerTitle: true,
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(propertyInfo.picture)
                      )
                    ),
                    height: 400,),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(25),
                      height: 400,
                      width: MediaQuery.of(context).size.height *0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 15
                          )]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PropertyCodeCard(item: 'Location', itemDetails: 'banana highlander 30', page: PropertyLocation(),),
                          PropertyCodeCard(item: 'Apartment Type', itemDetails: 'duplex Sky scraper',),
                          PropertyCodeCard(item: 'No of Rooms', itemDetails: '112 rooms',),
                          PropertyCodeCard(item: 'Facilities', itemDetails: 'water, electricity',),
                          PropertyCodeCard(item: 'Accommodation', itemDetails: 'no accommodation',),
                          PropertyCodeCard(item: 'Building Type', itemDetails: 'type S-class',),
                        ],
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class PropertyCodeCard extends StatelessWidget {
  final String item;
  final String itemDetails;
  final Widget page;

  const PropertyCodeCard({Key key, this.item, this.itemDetails, this.page}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 10
                    )]
                ),
                child: Text(
                  item,
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => page));
            },
          ),
          Spacer(),
          Text(itemDetails, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
      ],),
    );
  }
}

