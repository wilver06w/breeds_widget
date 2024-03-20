import 'package:breeds_widget/app/widget/imagen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets(
    'Should properly mock Image.network and not crash',
    (WidgetTester tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(
          const MaterialApp(
            home: ImagenWidget(
              key: Key('imageWidget'),
              image: 'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
            ),
          ),
        );

        expect(find.byKey(const Key('imageWidget')), findsOneWidget);
      });
    },
  );
}
