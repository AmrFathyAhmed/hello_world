import 'package:flutter/material.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/add_or_edit_shipping_address_view_body.dart';

class AddOrEditShippingAddressView extends StatelessWidget {
  const AddOrEditShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {},
        ),
        title: const Text(
          'Settings',
          style: Styles.styleBoldLeagueSpartan28,
        ),
        titleSpacing: -6.5,
      ),
      body: AddOrEditShippingAddressViewBody(),
    );
  }
}
