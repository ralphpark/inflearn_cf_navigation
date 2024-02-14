import 'package:flutter/material.dart';
import 'package:inflearn_cf_navigation/layout/main_layout.dart';
import 'package:inflearn_cf_navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //PopScope : 안드로이드에서 뒤로가기 버튼을 누르면 앱이 종료되는 것을 방지(
    //true면 pop이 가능하고 false면 pop이 불가능하다
    // return WillPopScope(
    //   onWillPop: () async {
    //   final canPop = await Navigator.of(context).canPop();
    //     return canPop;
    //   },
    // );
    return MainScreen(
      appBarTitle: 'Home',
      children: [
        //canPop : 현재 화면에서 pop이 가능하면 true, 아니면 false를 반환
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).canPop();
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
        // 홈에서 pop을 하면 검정색 화면이 나온다(빈 리스트)
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RouteOneScreen(
                  number: 1,
                ),
              ),
            );
            print('Result: $result');
          },
          child: Text('Push'),
        )
      ],
    );
  }
}
