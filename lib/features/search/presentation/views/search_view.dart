import 'package:flutter/material.dart';
import 'package:kendaka_app/features/Search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget
{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchViewBody()
    );
  }
}
