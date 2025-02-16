import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_app/constants.dart';
import 'package:kendaka_app/core/utils/styles.dart';
import 'package:kendaka_app/core/widgets/to_recieve_and_history_app_bar.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/receipt_widget.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/shipped_info_widget.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/shipped_widget.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/steper_widget.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/tracking_number_widget.dart';

class ToRecieveProgressView extends StatelessWidget {
  const ToRecieveProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ToRecieveAndHistoryAppBar(
            title: "To Recieve",
          ),
          SizedBox(
            height: 25,
          ),
          SteperWidget2(),
          TrackingNumberWidget(),
          SizedBox(
            height: 18,
          ),
          ReceiptWidget(),
          ShippedWidget(),
          ShippedInfoWidget(),
          ShippedInfoWidget(),
          ShippedInfoWidget(),
          ShippedInfoWidget(),
        ],
      ),
    );
  }
}




class StepperWidget extends StatelessWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.width * .3,
      color: Colors.white,
      child: Theme(
        data: ThemeData(shadowColor: Colors.transparent),
        child: Stepper(

          margin: EdgeInsets.zero, // Remove default margin
          elevation: 0, // Remove default shadow
          type: StepperType.horizontal,
          currentStep: 0,
          stepIconMargin: EdgeInsets.zero,// Adjust current step index as needed
          steps: [
            Step(
              title: Container(), // Remove title
              content: Container(), // Remove content
              isActive: true,
              state: StepState.complete, // Adjust state if necessary
              stepStyle: StepStyle(
                color: kPrimaryColor,
                border: Border.all(color: Colors.transparent, width: 0), // Remove border
                indexStyle: TextStyle(color: kPrimaryColor),
                connectorColor: kPrimaryColor,
                connectorThickness: 4,
              ),
            ),
            Step(
              title: Container(), // Remove title
              content: Container(), // Remove content
              isActive: false,
              state: StepState.indexed, // Adjust state if necessary
              stepStyle: StepStyle(
                color: kPrimaryColor,
                border: Border.all(color: Colors.white, width: 0), // Remove border
                indexStyle: TextStyle(color: kPrimaryColor),
                connectorColor: kPrimaryColor,
                connectorThickness: 4,
              ),
            ),
            Step(
              title: Container(), // Remove title
              content: Container(), // Remove content
              isActive: false,
              state: StepState.editing, // Adjust state if necessary
              stepStyle: StepStyle(
                color: kPrimaryColor,
                border: Border.all(color: Colors.transparent, width: 0), // Remove border
                indexStyle: TextStyle(color: kPrimaryColor),
                connectorColor: kPrimaryColor,
                connectorThickness: 4,
              ),
            ),
          ],
          stepIconBuilder: (stepIndex, stepState) {
            return Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent, width: 0), // Remove border
              ),
              child: Center(
                child: Text(
                  '${stepIndex + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return SizedBox.shrink(); // Hide default buttons
          },
        ),
      ),
    );
  }
}

// class CustomStepper2 extends StatelessWidget {
//   final int currentStep;
//   final int totalSteps;
//
//   CustomStepper2({required this.currentStep, required this.totalSteps});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(totalSteps, (index) {
//         return StepWidget(
//           isActive: index == currentStep,
//           isCompleted: index < currentStep,
//           isLast: index == totalSteps - 1,
//         );
//       }),
//     );
//   }
// }
//
// class StepWidget extends StatelessWidget {
//   final bool isActive;
//   final bool isCompleted;
//   final bool isLast;
//
//   StepWidget({
//     required this.isActive,
//     required this.isCompleted,
//     required this.isLast,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 30,
//           height: 30,
//           decoration: BoxDecoration(
//             color: isActive || isCompleted ? Colors.orange : Colors.white,
//             border: Border.all(
//               color: isActive || isCompleted ? Colors.orange : Colors.blue.shade100,
//               width: 4,
//             ),
//             borderRadius: BorderRadius.circular(50),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 2),
//               ),
//             ],
//           ),
//         ),
//         if (!isLast)
//           Container(
//             width: 100, // Width of the connecting line
//             height: 10,
//             color: isCompleted ? Colors.orange : Colors.blue.shade100,
//           ),
//       ],
//     );
//   }
// }
class SteperWidget2 extends StatelessWidget {
  const SteperWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.width * .2,
      color: Colors.white,
      child: Stepper(

        margin: EdgeInsets.zero,
        elevation: 0,

        connectorThickness: 4,
        stepIconMargin: EdgeInsets.zero,
        stepIconHeight: 24,
        stepIconWidth: 24,
        type: StepperType.horizontal,
        steps: [
          Step(
            title: Container(),
            content: Container(),
            isActive: true,
            stepStyle: StepStyle(
              color: kPrimaryColor,
              border: Border.all(color: Colors.white, width: 2),
              indexStyle: TextStyle(color: kPrimaryColor),
              connectorColor: kPrimaryColor,
              connectorThickness: 4,
            ),
          ),
          Step(
            title: Container(),
            content: Container(),
            isActive: true,
            stepStyle: StepStyle(
              color: kPrimaryColor,
              border: Border.all(color: Colors.white, width: 2),
              indexStyle: TextStyle(color: kPrimaryColor),
              connectorColor: kPrimaryColor,
              connectorThickness: 4,
            ),
          ),
          Step(
            title: Container(),
            content: Container(),
            isActive: true,
            stepStyle: StepStyle(
              color: kPrimaryColor,
              border: Border.all(color: Colors.white, width: 2),
              indexStyle: TextStyle(color: kPrimaryColor),
              connectorColor: kPrimaryColor,
              connectorThickness: 4,
            ),
          ),
        ],
        stepIconBuilder: (stepIndex, stepState) {
          return Container(
            decoration: BoxDecoration(),
          );
        },
      ),
    );
  }
}
