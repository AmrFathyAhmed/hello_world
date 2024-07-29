
import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/just_for-you_grid_view_item.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            childAspectRatio: 155 / 260),
        itemCount: 8,
        itemBuilder: (context, index) {
          return const JustForYouGridViewItem();
        },
      ),
    );
  }
}
