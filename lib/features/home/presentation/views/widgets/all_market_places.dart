import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_app/constants.dart';
import 'package:kendaka_app/features/Home/presentation/views/widgets/see_all_button.dart';
import 'package:kendaka_app/features/Home/presentation/views/widgets/story_list_view.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/all_market_place_list_view_item.dart';
import 'package:kendaka_app/generated/assets.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../Search/presentation/views/search_view.dart';
import 'custom_page_view.dart';
import 'home_app_bar.dart';

class AllMarketPlaces extends StatelessWidget {
  const AllMarketPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(children: [
        Column(
          children: [
            SizedBox(
              height: 54,
            ),
            HomeAppBar(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchView(),
                    ));
              },
            ),
            const CustomPageView(),
          ],
        ),
            AllMarketPlaceListView()
      ])),
    );
  }
}

class AllMarketPlaceListView extends StatelessWidget {
  const AllMarketPlaceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0,vertical: 5),
          child: AllMarketPlaceListViewItem(),
        );
      },
      padding: EdgeInsets.zero,
      itemCount: 5,
      shrinkWrap: true,
    );
  }
}
