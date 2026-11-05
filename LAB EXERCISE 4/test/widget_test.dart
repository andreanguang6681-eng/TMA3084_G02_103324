import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('Pizza Store app loads successfully', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });
}

