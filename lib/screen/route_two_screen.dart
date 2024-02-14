import 'package:flutter/material.dart';
import 'package:inflearn_cf_navigation/layout/main_layout.dart';
import 'package:inflearn_cf_navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainScreen(
      appBarTitle: 'Route Two',
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
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
            onPressed: () {
              //pushReplacement : Route Two를 삭제하고 One으로 Pop된다
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => RouteThreeScreen(),
                ),
              );
            },
            child: Text('Push Replacement')),
        ElevatedButton(
          onPressed: (){
            //pushAndRemoveUntil : 나머지 Route를 삭제하고 Three로 이동, 뒤로 가기가 없어진다
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => RouteThreeScreen(),
              ),
              (route) => false, // false는 다 삭제, true는 삭제하지 않는다
              // (route) => route.settings.name == '/', // home으로 바로 이동하고 중간 라우트 삭제
            );
          },
          child: Text('Push And Remove Until'),
        )
      ],
    );
  }
}
