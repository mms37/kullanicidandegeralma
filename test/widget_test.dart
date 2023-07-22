// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled9/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// <-- Proje adınıza göre düzenleyin

void main() {
  testWidgets('Kullanıcının girdiği isim ekranda gösteriliyor mu', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final inputFieldFinder = find.byType(ElevatedButton);
    expect(inputFieldFinder, findsOneWidget);

    final nameInput = "John Doe"; // Test için kullanılacak isim
    await tester.tap(inputFieldFinder);
    await tester.pump();
    await tester.enterText(inputFieldFinder, nameInput);

    final userNameTextFinder = find.text('isminiz: $nameInput');
    expect(userNameTextFinder, findsOneWidget);
  });
}
