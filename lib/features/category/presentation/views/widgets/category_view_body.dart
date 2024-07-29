import 'package:flutter/material.dart';
import 'package:kendaka_app/features/category/presentation/views/category_view.dart';
import 'package:kendaka_app/features/Search/presentation/views/widgets/all_item_header.dart';

import '../../../../Home/presentation/views/widgets/home_app_bar.dart';
import '../../../../Search/presentation/views/widgets/search_gird_view.dart';
import 'category_circular_grid_view.dart';

class CategoryViewBody extends StatelessWidget
{
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: ListView(
        children: [
          HomeAppBar(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCategoryView(),));
          },),
          const CategoryCircularGridView(),
          const TitleWithFilterIcon(title: "All Items",),
          const SearchGridView()

        ],
      ),
    );
  }
}


