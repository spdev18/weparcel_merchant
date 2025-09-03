import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_storage/get_storage.dart';
import 'package:weparcel3/Screen/SplashScreen/splash_screen.dart';
import 'package:weparcel3/main.dart';

void main() {
  setUpAll(() async {
    // Initialize GetStorage
    await GetStorage.init();
  });

  testWidgets('SplashScreen displays correctly', (WidgetTester tester) async {
    // Provide a default Locale for the test
    const testLocale = Locale('en', 'US');

    // Build the app with MyApp and trigger a frame
    await tester.pumpWidget(
      const MyApp(lang: testLocale),
    );

    // Allow async operations (like GetX initialization) to complete
    await tester.pumpAndSettle();

    // Verify that the SplashScreen is displayed
    expect(find.byType(SplashScreen), findsOneWidget);

    // Verify specific elements in SplashScreen
    expect(find.byType(Image), findsOneWidget); // Checks for the logo image
  });
}