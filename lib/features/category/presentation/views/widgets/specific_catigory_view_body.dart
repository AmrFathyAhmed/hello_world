import 'package:flutter/cupertino.dart';
import 'package:kendaka_app/features/Home/presentation/views/widgets/home_app_bar.dart';

import '../../../../Search/presentation/views/widgets/all_item_header.dart';
import '../../../../Search/presentation/views/widgets/search_gird_view.dart';

class SpecificCategoryViewBody extends StatelessWidget {
  const SpecificCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeAppBar(
          arrowIsVisible: true,
        ),
        SizedBox(
          height: 30,
        ),
        TitleWithFilterIcon(
          title: "Clothing",
          isSubtitleVisible: true,
          subTitle: "Dresses",
        ),
        SearchGridView()
      ],
    );
  }
}
