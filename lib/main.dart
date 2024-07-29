import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kendaka_app/features/auth/login/presentation/views/password_view.dart';
import 'package:kendaka_app/features/auth/login/presentation/views/widgets/password_view_body.dart';
import 'package:kendaka_app/features/auth/password_recovery/presentation/views/password_recovery_options_view.dart';
import 'package:kendaka_app/features/history/presentation/views/history_view.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/history_view_body.dart';
import 'package:kendaka_app/features/home/presentation/views/widgets/all_market_places.dart';
import 'package:kendaka_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:kendaka_app/features/product/presentation/views/product_in_sale_view.dart';
import 'package:kendaka_app/features/product/presentation/views/product_view.dart';
import 'package:kendaka_app/features/product_reviews/presentation/views/product_reviews_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/about_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/add_or_edit_shipping_address_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/confirm_order_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/select_languages_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/settings_profile_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/settings_view.dart';
import 'package:kendaka_app/features/product/presentation/views/product_view.dart';
import 'package:kendaka_app/features/auth/welcome_view/presentation/views/welcome_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/terms_and_condition_view.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/to_recieve_progress_view.dart';

import 'features/Home/presentation/views/home_view.dart';
import 'features/settings/presentation/views/my_shipping_address_view.dart';
import 'features/to_recieve/presentation/views/to_recieve_view.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),
    );}}