import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/My_shipping_address_view_body.dart';

class MyShippingAddressView extends StatelessWidget {
  const MyShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MyShippingAddressViewBody(),
    );
  }
}
