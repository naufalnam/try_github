import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_challenge/main.dart';

void main() {
  testWidgets('shows a nine-tile grid inside a panel', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const CommunityApp());

    expect(find.byType(CommunityPage), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(10));
  });
}
