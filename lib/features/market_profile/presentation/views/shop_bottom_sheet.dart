import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kendaka_app/constants.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/Home/presentation/views/widgets/just_for_you_text_widget.dart';
import 'package:kendaka_app/features/Home/presentation/views/widgets/see_all_button.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/just_for_you_grid_view.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/most_popular_list_view.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/top_product_list_view.dart';
import 'package:kendaka_app/features/market_profile/presentation/views/widgets/market_place_top_sale_list_view.dart';
import 'package:kendaka_app/generated/assets.dart';

import '../../../product/presentation/views/widgets/rating_section.dart';
import '../../../product_reviews/presentation/views/product_reviews_view.dart';
import 'widgets/market_place_offers_list_view.dart';

class ShopBottomSheet extends StatelessWidget {
  const ShopBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none, // Ensure children can overflow
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                child: Image.asset(
                  Assets.imagesAllMarketPlacesTest2,
                  width: MediaQuery.of(context).size.width,
                  height: 200, // Adjust height to your need
                  fit: BoxFit.cover, // Use cover for maintaining aspect ratio
                ),
              ),
              Positioned(
                bottom: -83,
                left: 12, // Center horizontally
                child: Container(
                  height: 167,
                  width: 167,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ClipOval( // Ensure image fits in the circular container
                    child: Image.asset(
                      Assets.imagesShopImageTest,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RatingBarIndicator(
                  itemSize: 25,
                  rating: 4.0,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  "(24009)",
                  style: Styles.styleRegularInterLight15.copyWith(
                    color: Color(0xff95989A),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17, left: 15),
                      child: Text(
                        'Cloth Shop',
                        style: Styles.styleExtraBoldLeagueSpartan20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(Assets.imagesShare)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                  ],
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
                  style: Styles.styleRegularInterLight15,textAlign: TextAlign.right,
                ),
                const SizedBox(height: 17,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Qena, aswan, cairo",style: Styles.styleRegularInterLight15.copyWith(fontWeight: FontWeight.w600),),
                    SvgPicture.asset(Assets.imagesMarketplaceLocationIcon)
                  ],
                )
              ],
            ),
          ),// Space for the overflowing container
         const  MarketPlaceTopSaleListView(),
         const  MarketPlaceOffersListView(),
          const TopProductListView(title: "Categories ",),
          const JustForYouGridView(),
          SeeAllButton(text: "see all product ",color:kPrimaryColor),
          RatingSection(
            userRatedImage: Assets.imagesUserRateInProduct,
            generalRate: '4/5',
            name: 'Veronika',
            rate: 4.0,
            comment:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductReviewsView(),));
            },
          ),

        ],
      ),
    );
  }
}
