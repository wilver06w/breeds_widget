import 'package:breeds_widget/app/widget/item_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test TitleDescription Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: ItemDescription(
          title: 'Soy el titulo',
          description: 'Soy la descripcion',
        ),
      ),
    );

    expect(find.text('Soy el titulo'), findsOneWidget);
    expect(find.text('Soy la descripcion'), findsOneWidget);
  });
}
