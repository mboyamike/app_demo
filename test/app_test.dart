import 'package:app_demo/app.dart';
import 'package:app_demo/landing/landing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Landing page is first loaded', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    final landingFinder = find.byType(LandingScreen);
    expect(landingFinder, findsOneWidget);
  });
}
