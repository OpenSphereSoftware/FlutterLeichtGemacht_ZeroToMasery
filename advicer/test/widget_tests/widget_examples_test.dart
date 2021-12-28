import 'package:advicer/widget_test_examples/simple_text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("check if text is correct", (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget(title: "title", message: "message"));

    final findTitle = find.text("title");
    final findMessage = find.text("message");

    expect(findTitle, findsOneWidget);
    expect(findMessage, findsOneWidget);
  });
}
