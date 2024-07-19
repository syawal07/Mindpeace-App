import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mindpeace/main.dart';

void main() {
  testWidgets('Main page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our app bar title is displayed.
    expect(find.text('MindPeace'), findsOneWidget);

    // Verify that HomePage is displayed by default.
    expect(find.byIcon(Icons.spa), findsOneWidget);
    expect(find.text('Welcome to MindPeace'), findsOneWidget);

    // Tap the 'Articles' bottom navigation bar item and trigger a frame.
    await tester.tap(find.byIcon(Icons.article));
    await tester.pump();

    // Verify that ArticlesPage is displayed.
    expect(find.byIcon(Icons.article), findsOneWidget);
    expect(find.text('Articles'), findsOneWidget);

    // Tap the 'Journal' bottom navigation bar item and trigger a frame.
    await tester.tap(find.byIcon(Icons.book));
    await tester.pump();

    // Verify that JournalPage is displayed.
    expect(find.byIcon(Icons.book), findsOneWidget);
    expect(find.text('Journal'), findsOneWidget);
  });
}
