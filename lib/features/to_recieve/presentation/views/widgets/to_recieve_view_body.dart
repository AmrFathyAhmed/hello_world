import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kendaka_app/core/widgets/to_recieve_and_history_app_bar.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/to_recieve_list_view.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/to_recieve_list_view_item.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/to_recieve_progress_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class ToRecieveViewBody extends StatelessWidget {
  const ToRecieveViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ToRecieveAndHistoryAppBar(
        title: "To Recieve",
      ),
      ToRecieveListView(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ToRecieveProgressView(),));
        },
        numOfItem: 5,
      )
    ]);
  }
}
