import 'package:flutter/material.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/history_list_view_item.dart';

class HistoryListView extends StatelessWidget {
  const HistoryListView({Key? key, this.numOfItem=4, this.onTap}) : super(key: key);
    final int? numOfItem;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: ListView.builder(

        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => HistoryListViewItem(onTap: onTap,),
        itemCount: numOfItem,

      ),
    );
  }
}
