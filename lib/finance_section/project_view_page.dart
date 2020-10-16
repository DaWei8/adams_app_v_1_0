import 'package:adams_app_v_1_0/database_and_info/information_bullets.dart';
import 'package:adams_app_v_1_0/finance_section/new_project_item.dart';
import 'package:adams_app_v_1_0/themedata/color_themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '  ${item.itemName} ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),),
          Text(
            '  ${item.unit}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          Text(
            '  N${item.rate}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),

        ],
      ),
    );
  }
}

class SelectedProjectView extends StatefulWidget {
  final Project project;

  const SelectedProjectView({Key key, this.project}) : super(key: key);

  @override
  _SelectedProjectViewState createState() => _SelectedProjectViewState();
}

class _SelectedProjectViewState extends State<SelectedProjectView> {
  @override
  Widget build(BuildContext context) {

    int itemListCounter = 0;

    List<Item>  category1 = List<Item>();
    List<Item>  category2 = List<Item>();
    List<Item>  category3 = List<Item>();
    List categoryList  = List();
    while(itemListCounter != widget.project.items.length){
      //Check what category the item belongs to
      //and store the item in a specific list


      switch(widget.project.items[itemListCounter].category){
        case "Category 1" : {
          category1.add(widget.project.items[itemListCounter]);
        } break;
        case "Category 2" : {
          category2.add(widget.project.items[itemListCounter]);
        }break;
        case "Category 3" : {
          category3.add(widget.project.items[itemListCounter]);
        }break;
        default: { break; }
        break;
      }
      //increment the counter value
      itemListCounter++;
    }
    //adds all non-empty categories to the general categoryList
    category1.isEmpty ? categoryList.toList() : categoryList.add(category1);
    category2.isEmpty ? categoryList.toList() : categoryList.add(category2);
    category3.isEmpty ? categoryList.toList() : categoryList.add(category3);



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Text('${widget.project.projectName}'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {

          print(categoryList);
          if (categoryList[index] != []) {
            int totalCost = 0;
            int cost = 0;
            int counter = 0;
            while(counter != categoryList[index].length) {
              int _finalCost = cost;
            cost = categoryList[index][counter].unit * categoryList[index][counter].rate;
            _finalCost += cost;
            counter++;
            totalCost = _finalCost;
          }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text('${categoryList[index][0].category}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: defaultTileColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        Container(
                          height: 250,
                          child: ListView.builder(
                            addSemanticIndexes: false,
                            scrollDirection: Axis.vertical,
                            itemCount: categoryList[index].length,
                            itemBuilder:
                                (context, x) {
                              return ItemCard(item: categoryList[index][x]);
                            }
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                'Total Amount =  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              totalCost != 0 ? Text('$totalCost Naira', style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),): Text('$totalCost Naira', style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ),
                      ]) ,
                ),
              ),
            ],
          );
          } else {
            return Container(child: null);
          }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              elevation: 10,
              enableDrag: true,
              isDismissible: true,
              context: context,
              builder: (context) => NewProjectItem()
          );
        },
        elevation: 10,
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
      ),
    );
  }
}

