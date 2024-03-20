import 'package:breeds_widget/app/widget/title_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test TitleSections Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: TitleSections(
          key: Key('title_sections'),
          title: 'hola',
        ),
      ),
    );

    expect(find.byKey(const Key('title_sections')), findsOneWidget);
    expect(find.text('hola'), findsOneWidget);
  });
}
