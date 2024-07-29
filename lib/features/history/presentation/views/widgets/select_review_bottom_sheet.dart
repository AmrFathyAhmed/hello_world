import 'package:flutter/material.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/history_list_view_item.dart';

import 'add_review_bottom_sheet.dart';
import 'history_list_view.dart';

class SelectReviewBottomSheet extends StatelessWidget {
  const SelectReviewBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      color: Colors.white,
    ),

      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Which item you want to review?",style: Styles.styleBoldLeagueSpartan18,),
          )
          ,SizedBox(
            height: 45,
          ),
          HistoryListView(numOfItem:2,onTap: (){
            showModalBottomSheet(
                context: context,

                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return AddReviewBottomSheet();});
          },)
        ],
      ),
    );
  }
}
