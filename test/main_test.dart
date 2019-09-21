import 'package:brainy_tasks/main.dart';
import 'package:brainy_tasks/ui/views/HomePage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginView loads on page load', (WidgetTester tester) async {
    await tester.pumpWidget(BrainyTasks());

    expect(find.byType(HomePage), findsOneWidget);
  });
}
