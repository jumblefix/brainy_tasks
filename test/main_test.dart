import 'package:brainy_tasks/main.dart';
import 'package:brainy_tasks/views/HomePage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginView loads on page load', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byType(HomePage), findsOneWidget);
  });
}
