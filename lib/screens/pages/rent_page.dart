import 'package:flutter/material.dart';

class RentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[900],
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.orangeAccent),
                backgroundColor: Colors.grey[900],
                title: Text('Rent'),
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
                    RentCard(item: 'Location', itemDetails: 'banana highlander 30',),
                    RentCard(item: 'Apartment Type', itemDetails: 'duplex Sky scraper',),
                    RentCard(item: 'No of Rooms', itemDetails: '112 rooms',),
                    RentCard(item: 'Facilities', itemDetails: 'water, electricity',),
                    RentCard(item: 'Accommodation', itemDetails: 'no accommodation',),
                    RentCard(item: 'Building Type', itemDetails: 'type S-class',),

                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class RentCard extends StatelessWidget {
  final String item;
  final String itemDetails;

  const RentCard({Key key, this.item, this.itemDetails}) : super(key: key);
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
