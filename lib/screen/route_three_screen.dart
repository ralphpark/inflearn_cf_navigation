
import 'package:flutter/material.dart';
import 'package:inflearn_cf_navigation/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainScreen(
      appBarTitle: 'Route Three',
      children: [
        Text(
          'Arguments: ${arguments.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        )
      ],
    );
  }
}