// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Widget 测试
import 'package:hn_app/main.dart';
// flutter test // 这条命令不用手机即可完成
// flutter run test/widget_test.dart // 这条命令需要手机才可完成
void main() {
  testWidgets('Clicking tile it opens', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // 期望刚打开 app 的时候，找不到 launch 图标
    expect(find.byIcon(Icons.launch), findsNothing);

    // 点击第一个条目
    await tester.tap(find.byType(ExpansionTile).first);
    // 开启循环
    await tester.pump();
    // await tester.pumpAndSettle(); // 当点击后有动画时，用这个代码

    // 期望点击了一个条目后，可以找到 launch 图标
    expect(find.byIcon(Icons.launch), findsOneWidget);

  });
}
