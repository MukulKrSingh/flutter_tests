import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_tests/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Test authentication',
    (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      var emailField = find.byKey(
        const Key('email_field'),
      );

      var pwdField = find.byKey(
        const Key('pwd_field'),
      );

      var submitBtn = find.byKey(
        const Key('submit_btn'),
      );
      await widgetTester.enterText(emailField, 'test@example.com');

      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(pwdField, '123456');

      await widgetTester.pumpAndSettle();

      await widgetTester.tap(submitBtn);

      await widgetTester.pumpAndSettle();

      expect(
        find.byKey(
          const Key('home_screen_text'),
        ),
        findsOneWidget,
      );
    },
  );
}
