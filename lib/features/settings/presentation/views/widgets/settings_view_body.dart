import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/features/history/presentation/views/history_view.dart';
import 'package:kendaka_app/features/history/presentation/views/widgets/history_view_body.dart';
import 'package:kendaka_app/features/settings/presentation/views/about_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/my_shipping_address_view.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/settings_view_account_section.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/settings_view_app_bar.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/settings_view_my_orders_section.dart';
import 'package:kendaka_app/features/settings/presentation/views/widgets/settings_view_personal_section.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/to_recieve_view.dart';
import 'package:kendaka_app/generated/assets.dart';

import '../confirm_order_view.dart';
import '../settings_profile_view.dart';
import '../terms_and_condition_view.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SettingsViewAppBar(
              name: 'Amanda',
              qrCodeOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmOrderView(),));
              },
            ),
            SettingsViewMyOrdersSection(
              historyNotify: false,
              toReceiveNotify: true,
              historyOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryViewBody(),));
      
              },
              toReceiveOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ToRecieveView(),));

              },
            ),
            const SizedBox(
              height: 35,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
      
                  'Settings',
                  style: Styles.styleBoldLeagueSpartan28,
                ),
              ),
            ),
            SettingsViewPersonalSection(
              profileOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsProfileView(),));

              },
              paymentMethodsOnPressed: () {},
              shippingAddressOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyShippingAddressView(),));

              },
            ),
            SettingsViewAccountSection(
              selectedLanguage: 'English',

              aboutKendakaOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutView(),));
      
              },
              languageOnPressed: () {},
              termsAndConditionsOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TermsAndConditionView(),));

              },
            ),
            Align(
              alignment: Alignment.centerLeft,
      
              child: Padding(
                padding: const EdgeInsets.only(left: 21),
                child: IconButton(
                    onPressed: () {},
                    icon: Text(
                      'Delete Account',
                      style: Styles.styleSemiBold13
                          .copyWith(color: const Color(0xFFD97474)),
                    )),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .4),
              child: Image.asset(
                Assets.imagesSettingsLogo,
                width: 101.13,
                height: 82.87,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                   TextSpan(text: 'powered by ',style: Styles.styleMediumLeagueSpartan14_35
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14.54,color: Colors.black)),
      
                  TextSpan(
                    text: 'Aliyn.net',
                      style: Styles.styleSemiBoldInterLight12.copyWith(color: Colors.black,fontSize: 17.45,fontWeight: FontWeight.w700),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle tap
                        print('Aliyn.net tapped');
                      },
                  ),
                  const TextSpan(text: '  '),
                  const TextSpan(
                    text: '🔗',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
             Text('Version 1.0 Oct, 2024',style: Styles.styleMediumLeagueSpartan14_35
                .copyWith(fontWeight: FontWeight.w400, fontSize: 14.54,color: Colors.black)),
            const SizedBox(height: 86,)
      
          ],
        ),
      ),
    );
  }
}
