import 'package:flutter/material.dart';

/// 🌙 Mond Widget - Animation Showcase
///
/// Zeigt eine animierte Mond-Sichel:
/// - Gradient-Farben von Blau zu Hellblau
/// - Wird in der Theme-Animation für den Dark Mode verwendet
/// - Animiert mit AnimatedPositioned und AnimatedOpacity
class Moon extends StatelessWidget {
  const Moon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF8983F7), Color(0xFFA3DAFB)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
