import 'package:flutter/material.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/market_place_list_view_item.dart';

import 'all_market_places.dart';
import 'header_widget.dart';

class MarketPlaceListView extends StatelessWidget {
  const MarketPlaceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          title: 'Market Place',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllMarketPlaces(),
                ));
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .31,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                ),
                // Add left padding to the first item
                child: const MarketPlaceListViewItem(),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
