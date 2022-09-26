import 'package:bstmobile_app/widget/header_cart_widget.dart';
import 'package:flutter/material.dart';

import '../models/categories_grid.dart';
import '../widget/home_gridview_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/box11-320x320.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/box11-320x320.jpg'),
    CategoriesGridModel(name: 'Fluk Meter', img: 'assets/front/fluk.jpg'),
    CategoriesGridModel(name: 'Brush', img: 'assets/front/brush.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderCartWidget(text: "Category List"),
            const Divider(height: 2,color: Colors.grey,),
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
          ],
        ),
      ),
    ));
  }
}
