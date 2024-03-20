import 'package:breeds_widget/app/widget/body_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';

void main() {
  testWidgets('Test BodyFooter Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: BodyFooter(
          version: '1.0.0',
        ),
      ),
    );
    expect(find.text('${BreedUiValues.version} 1.0.0'), findsOneWidget);
  });
}
