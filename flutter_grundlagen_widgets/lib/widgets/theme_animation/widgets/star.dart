import 'package:flutter/material.dart';

/// ⭐ Stern Widget - Animation Showcase
///
/// Zeigt einen funkelnden Stern:
/// - Kleiner Kreis mit Glow-Effekt
/// - BoxShadow für den Sternenglanz
/// - Wird in der Theme-Animation für den Dark Mode verwendet
/// - Animiert mit AnimatedOpacity für Fade-In/Out
class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFC9E9FC),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFC9E9FC).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }
}
