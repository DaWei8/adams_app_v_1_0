//contains adverts and information bullets
List informationBullets = [
  'How to rent and own property',
  'FMBN - Home Ownership',
  'How to get your Certificate of Ownership',
  'How to maximize lease profits'
  'Build your home without going broke'
];

class Project {
  final String projectName;
  final List items;
  final int totalCost;

  Project({this.projectName, this.items, this.totalCost});

}

class Item {
  final String category, itemName;
  final int unit, rate, cost;

  Item({this.category, this.itemName, this.unit, this.rate, this.cost});

}


List<Project> projectList = [
  Project(
    projectName: 'Project A',
    items: [
      Item(
        itemName: 'Blocks',
        category: 'Category 2',
        unit: 40,
        rate: 150,
      ),
      Item(
        itemName: 'Tiles',
        category: 'Category 2',
        unit: 50,
        rate: 5000,
      ),
      Item(
        itemName: 'Gravel',
        category: 'Category 2',
        unit: 5,
        rate: 75000,
      ),
      Item(
        itemName: 'Paint',
        category: 'Category 2',
        unit: 20,
        rate: 4500,
      ),
    ],
  ),
  Project(
    projectName: 'Project C',
    items: [
      Item(
        itemName: 'Sand',
        category: 'Category 2',
        unit: 30,
        rate: 350,
      ),
      Item(
        itemName: 'Tiles',
        category: 'Category 2',
        unit: 50,
        rate: 5000,
      ),
      Item(
        itemName: 'Gravel',
        category: 'Category 1',
        unit: 5,
        rate: 75000,
      ),
      Item(
        itemName: 'Paint',
        category: 'Category 2',
        unit: 20,
        rate: 4500,
      ),
    ],
  ),
  Project(
    projectName: 'Project D',
    items: [
      Item(
        itemName: 'Blocks',
        category: 'Category 1',
        unit: 40,
        rate: 150,
      ),
      Item(
        itemName: 'Tiles',
        category: 'Category 2',
        unit: 50,
        rate: 5000,
      ),
      Item(
        itemName: 'Gravel',
        category: 'Category 1',
        unit: 5,
        rate: 75000,
      ),
      Item(
        itemName: 'Paint',
        category: 'Category 2',
        unit: 20,
        rate: 4500,
      ),
    ],
  ),
  Project(
    projectName: 'Project B',
    items: [
      Item(
        itemName: 'Blocks',
        category: 'Category 1',
        unit: 40,
        rate: 150,
      ),
      Item(
        itemName: 'Tiles',
        category: 'Category 2',
        unit: 50,
        rate: 5000,
      ),
      Item(
        itemName: 'Gravel',
        category: 'Category 3',
        unit: 5,
        rate: 75000,
      ),
      Item(
        itemName: 'Paint',
        category: 'Category 2',
        unit: 20,
        rate: 4500,
      ),
    ],
  ),

];