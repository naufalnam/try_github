import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const CommunityApp());
}

class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CommunityPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF4F1),
        useMaterial3: true,
      ),
    );
  }
}

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 4, 14, 4),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFEADDD8)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final horizontalInset = constraints.maxWidth * 0.062;
              final topInset = constraints.maxHeight * 0.06;
              final bottomInset = constraints.maxHeight * 0.15;
              final tileWidth = constraints.maxWidth * 0.18;
              final tileHeight = math.min(55.0, constraints.maxHeight * 0.17);

              return Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalInset,
                  topInset,
                  horizontalInset,
                  bottomInset,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var row = 0; row < 3; row++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var column = 0; column < 3; column++)
                            Container(
                              width: tileWidth,
                              height: tileHeight,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2E7E3),
                                border: Border.all(
                                  color: const Color(0xFFEADDD8),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
