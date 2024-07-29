
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ShippedInfoWidget extends StatelessWidget {
  const ShippedInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.60,
                child: Text(
                  "Arrived at Logistic Facility",
                  style: Styles.styleBoldLeagueSpartan17,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
                  child: Text(
                    "April,19 19:07",
                    style: Styles.styleMediumLeagueSpartan14,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.",
                style: Styles.styleRegularInterLight12,
              ))
        ],
      ),
    );
  }
}
