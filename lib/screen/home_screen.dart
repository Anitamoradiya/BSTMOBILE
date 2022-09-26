import 'package:bstmobile_app/widget/header_widget.dart';
import 'package:flutter/material.dart';

import '../models/categories_grid.dart';
import '../mystyle.dart';
import '../widget/home_gridview_widget.dart';
import '../widget/home_tools.dart';
import '../widget/search_textfield.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHovered = false;
  List<CategoriesGridModel> categorylist = [
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/box11-320x320.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/box11-320x320.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children:  [
          const HeaderWidget(),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 5),
            child: SearchTextField(
              hinttext: 'Search Tools',
            ),
          ),
           const Divider(
            height: 2.0,
            color: Colors.grey,
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Image.asset('assets/front/Allprod.jpg'),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                                  'Deal of the Day',
                                  style: heading5
                                )),
                            SizedBox(
                              width: 70,
                              child: Text(
                                'VIEW All',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 15.0,
                            ),
                            HomeTools(
                                img: 'assets/front/box11-320x320.jpg',
                                name: 'WoodenBox',
                                price: '₹900'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/brush.jpg',
                                name: 'Double Head Brush',
                                price: '₹120'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/fluk.jpg',
                                name: 'Fluk Multimeter',
                                price: '₹3200'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/flux_relife.jpg',
                                name: 'Relife Flux Paste',
                                price: '₹200'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/ir10 pro.jpg',
                                name: 'IR10PRO Glue Remover',
                                price: '₹1000'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/ufi.jpg',
                                name: 'Ufi Box',
                                price: '₹22000'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w800),
                            )),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: categorylist.length,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              CategoriesGridModel catelist = categorylist[index];
                              return HomeGridviewWidget(
                                name: catelist.name,
                                img: catelist.img,
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                                  'Trending Tools',
                                  style: TextStyle(
                                      fontSize: 17.0, fontWeight: FontWeight.w800),
                                )),
                            SizedBox(
                              width: 70,
                              child: Text(
                                'VIEW All',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 15.0,
                            ),
                            HomeTools(
                                img: 'assets/front/box11-320x320.jpg',
                                name: 'WoodenBox',
                                price: '₹900'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/brush.jpg',
                                name: 'Double Head Brush',
                                price: '₹120'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/fluk.jpg',
                                name: 'Fluk Multimeter',
                                price: '₹3200'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/flux_relife.jpg',
                                name: 'Relife Flux Paste',
                                price: '₹200'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/ir10 pro.jpg',
                                name: 'IR10PRO Glue Remover',
                                price: '₹1000'),
                            SizedBox(
                              width: 8.0,
                            ),
                            HomeTools(
                                img: 'assets/front/images (1).jpg',
                                name: 'MicroScope',
                                price: '₹20000'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Affiliated certificates',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w800),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/front/2uul.jpg'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image:
                                        AssetImage('assets/front/relife.jpg'),
                                        fit: BoxFit.fill),
                                  )),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image:
                                        AssetImage('assets/front/sunshine.jpg'),
                                        fit: BoxFit.fill),
                                  )),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/front/2uul.jpg'),
                                        fit: BoxFit.fill),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
