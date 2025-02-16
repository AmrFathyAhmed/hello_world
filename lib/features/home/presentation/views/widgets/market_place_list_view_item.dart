import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class MarketPlaceListViewItem extends StatelessWidget {
  const MarketPlaceListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * .31,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * .2 - 10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Assets.imagesMarketPlaceTest,
                    fit: BoxFit.fill,),),),),),
          SizedBox(
            height: MediaQuery.of(context).size.height * .11 - 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "elshazly",
                    style: Styles.styleBoldLeagueSpartan21.copyWith(
                        fontSize: MediaQuery.of(context).size.width * .04),
                    maxLines: 1,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.height * .2 - 3,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur.",
                        style: Styles.styleRegularInterLight12.copyWith(
                          //fontSize: MediaQuery.of(context).size.width*.028

                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                      )),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
