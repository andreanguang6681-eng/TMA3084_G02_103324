import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('Menu displays all three pizza store items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  testWidgets('Tapping Vegetable Pizza opens its detail screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    expect(find.text('Vegetable Pizza'), findsNWidgets(2));
    expect(
      find.text('A delicious pizza topped with fresh vegetables and melted mozzarella cheese.'),
      findsOneWidget,
    );
    expect(find.text('Ingredients'), findsOneWidget);
  });

  testWidgets('Back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.text('Back'));
    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });
}

