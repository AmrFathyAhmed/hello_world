import 'package:flutter/material.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/about_view_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AboutViewBody(),
    );
  }
}
