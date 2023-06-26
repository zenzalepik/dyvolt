import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }



class Product {
  final String name;
  bool isChecked;

  Product(this.name, this.isChecked);
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> productList = [
    Product('Product 1', false),
    Product('Product 2', false),
    Product('Product 3', false),
  ];

  bool selectAll = false;

  void deleteCheckedItems() {
    setState(() {
      productList.removeWhere((product) => product.isChecked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectAll = !selectAll;
                  for (var product in productList) {
                    product.isChecked = selectAll;
                  }
                });
              },
              child: Text(selectAll ? 'Deselect All' : 'Select All'),
            ),
            ElevatedButton(
              onPressed: () {
                deleteCheckedItems();
              },
              child: Text('Delete Checked'),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: Checkbox(
                    value: productList[index].isChecked,
                    onChanged: (value) {
                      setState(() {
                        productList[index].isChecked = value!;
                      });
                    },
                  ),
                  title: Text(productList[index].name),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
