import 'package:flutter/material.dart';
import 'package:kendaka_app/constants.dart';
import 'package:kendaka_app/core/widgets/cancel_button.dart';
import 'package:kendaka_app/core/widgets/custom_button.dart';
import 'package:kendaka_app/core/widgets/reusable_container.dart';
import 'package:kendaka_app/features/auth/login/presentation/views/widgets/custom_text_field.dart';
import 'package:kendaka_app/features/auth/password_recovery/presentation/views/widgets/profile_circle_avatar.dart';
import 'package:kendaka_app/features/auth/password_recovery/presentation/views/widgets/reset_password_text_section.dart';
import 'package:kendaka_app/generated/assets.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableContainer(
      backgroundImage: Assets.imagesResetPassordBubble,
    childWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 156,),
            const ProfileCircleAvatar(),
            const ResetPasswordTextSection(),
             CustomTextField2(
              hintText: "new Password",
              obscureText: true,
            ),
             CustomTextField2(
              hintText: "confirm Password",
              obscureText: true,
            ),
            const Spacer(),
            CustomButton2(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const OtpView()));
              },
              backgroundColor: kPrimaryColor,
              text: 'Next',
              buttonWidth: 335,
              buttonHeight: 61,
              borderRadius: BorderRadius.circular(16),
            ),
            const SizedBox(
              height: 24,
            ),
            CancelButton(onTap: (){},),
          ],
        ),
      ),
    );
  }
}



