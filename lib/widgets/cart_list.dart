import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';

class Product {
  final String name;
  bool isChecked;

  Product(this.name, this.isChecked);
}

class CartProductList extends StatefulWidget {
  const CartProductList({super.key});

  @override
  _CartProductListState createState() => _CartProductListState();
}

class _CartProductListState extends State<CartProductList> {
  List<Product> productList = [
    Product('Paket Kit Konversi Matic R14 PNP 1', false),
    Product('Paket Kit Konversi Matic R14 PNP 2', false),
    Product('Paket Kit Konversi Matic R14 PNP 3', false),
  ];

  bool selectAll = false;

  void deleteCheckedItems() {
    setState(() {
      productList.removeWhere((product) => product.isChecked);
    });
  }

  int number = 0;

  void increment() {
    setState(() {
      number++;
    });
  }

  void decrement() {
    if (number > 0) {
      setState(() {
        number--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                width: double.infinity, // lebar sesuai dengan parent
                height: 24, // tinggi container
                // color: Colors.blue,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectAll = !selectAll;
                      for (var product in productList) {
                        product.isChecked = selectAll;
                      }
                    });
                  },
                  child: const Text(
                    'Select All',
                    textAlign: TextAlign.left,
                    style: TextStyles.textTitleSection,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 16),
              height: 24, // tinggi container
              // color: Colors.green, Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  deleteCheckedItems();
                },
                child: const Text(
                  'Delete',
                  textAlign: TextAlign.right,
                  style: TextStyles.textLinkSmall,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: productList[index].isChecked,
                          onChanged: (value) {
                            setState(() {
                              productList[index].isChecked = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(89, 27, 27, 0.05),
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          height: 86,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  'assets/images/products/1.jpg',
                                  height: 86,
                                  width: 86,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(16, 11, 0, 11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'productList[index].name',
                                        style: TextStyles.textLabelDark,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '500WATT 72VOLT',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  TextStyles.text12px300Grey555,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          // Container(
                                          //   padding: EdgeInsets.symmetric(
                                          //       horizontal: 4, vertical: 2),
                                          //   decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.circular(4),
                                          //     color: AppColors.labelInfoColor,
                                          //   ),
                                          //   child: Text(
                                          //     'Process',
                                          //     style: TextStyle(
                                          //         fontFamily: 'Inter',
                                          //         fontSize: 10.0,
                                          //         fontWeight: FontWeight.w400,
                                          //         height: 1.4,
                                          //         letterSpacing: 0.005,
                                          //         color: AppColors.primaryColor),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Text('5 Item',
                                              style:
                                                  TextStyles.text8px400GreyBc),
                                          Spacer(),
                                          Expanded(
                                            child: Text(
                                              'IDR 123.456',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  TextStyles.textProductPrice,
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // PopupMenuButton<String>(
                              //   iconSize: 20,
                              //   icon: CustomIcon(
                              //     iconName: 'icon_more_list',
                              //     size: 20,
                              //     color: AppColors.primaryColor,
                              //   ),
                              //   itemBuilder: (BuildContext context) {
                              //     return <PopupMenuEntry<String>>[
                              //       PopupMenuItem<String>(
                              //         value: 'menu1',
                              //         child: Text('Menu 1'),
                              //       ),
                              //       PopupMenuItem<String>(
                              //         value: 'menu2',
                              //         child: Text('Menu 2'),
                              //       ),
                              //       PopupMenuItem<String>(
                              //         value: 'menu3',
                              //         child: Text('Menu 3'),
                              //       ),
                              //     ];
                              //   },
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: decrement,
                      ),
                      Text(
                        number.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:16.0),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: increment,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
