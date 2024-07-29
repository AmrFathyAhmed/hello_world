import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/core/widgets/to_recieve_and_history_app_bar.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/history_list_view_item.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/select_review_bottom_sheet.dart';
import 'package:kendaka_app/generated/assets.dart';

import 'history_list_view.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         const  ToRecieveAndHistoryAppBar(title: "History",),
          HistoryListView(numOfItem: 6,onTap: (){
            showModalBottomSheet(
                context: context,

                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return SelectReviewBottomSheet();});
          },)
        ],
      ),
    );
  }
}
