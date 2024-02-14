import 'package:flutter/material.dart';
import 'package:inflearn_cf_navigation/layout/main_layout.dart';
import 'package:inflearn_cf_navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({super.key,this.number});

  final int? number;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      appBarTitle: 'Route One',
      children: [
        Text(
          'Number: ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        //canPop : 현재 화면에서 pop이 가능하면 true, 아니면 false를 반환
        ElevatedButton(
          onPressed: ()  {
            final result =  Navigator.of(context).canPop();
            print('Result: $result');
          },
          child: Text('Can Pop'),
        ),
        //maybePop : pop을 시도하고 pop이 되면 true, 안되면 false를 반환
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).maybePop();
            print('Result: $result');
          },
          child: Text('Maybe Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed:(){ Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RouteTwoScreen(),
              settings: RouteSettings(
                arguments: 789,
              ),
            ),
          );
          },
          child: Text('Push'),
        )
      ],
    );
  }
}
