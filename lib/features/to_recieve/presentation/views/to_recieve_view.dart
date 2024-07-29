import 'package:flutter/material.dart';
import 'package:kendaka_app/features/to_recieve/presentation/views/widgets/to_recieve_view_body.dart';

class ToRecieveView extends StatelessWidget
{
  const ToRecieveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ToRecieveViewBody()
    );
  }
}
