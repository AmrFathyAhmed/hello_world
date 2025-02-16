import 'package:flutter/material.dart';
import 'package:kendaka_app/core/utils/styles.dart';

class SettingsViewMyOrdersSection extends StatefulWidget {
  const SettingsViewMyOrdersSection({super.key, this.toReceiveOnPressed, this.historyOnPressed, required this.toReceiveNotify, required this.historyNotify});

  final void Function()? toReceiveOnPressed;
  final void Function()? historyOnPressed;
  final bool toReceiveNotify;
  final bool historyNotify;

  @override
  State<SettingsViewMyOrdersSection> createState() => _SettingsViewMyOrdersSectionState();
}

class _SettingsViewMyOrdersSectionState extends State<SettingsViewMyOrdersSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: [
          const Text(
            'My Orders',
            style: Styles.styleBoldLeagueSpartan21,
          ),
          const SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              SizedBox(
                width: 111,
                height: 31.4,
                child: ElevatedButton(
                  onPressed: widget.toReceiveOnPressed,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFFEBF8FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.5),
                    ),
                  ),
                  child: Center(
                      child: Text('To Receive',
                          style: Styles.styleMediumLeagueSpartan14_35
                              .copyWith(color: const Color(0xFF0D87CB)))),
                ),
              ),
              if (widget.toReceiveNotify)
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor:
                    const Color(0xFFFF7439).withOpacity(.9),
                  ),
                ),
            ],
          ),
          const Spacer(),
          Stack(
            children: [
              SizedBox(
                width: 104.07,
                height: 31.4,
                child: ElevatedButton(
                  onPressed: widget.historyOnPressed,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFFEBF8FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.5),
                    ),
                  ),
                  child: Center(
                      child: Text(
                        'History',
                        style: Styles.styleMediumLeagueSpartan14_35
                            .copyWith(color: Color(0xFF0D87CB)),
                      )),
                ),
              ),
              if (widget.historyNotify)
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor:
                    const Color(0xFFFF7439).withOpacity(.9),
                  ),
                ),
            ],
          ),
        ],
      ),
    )
    ;
  }
}
