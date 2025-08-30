import 'package:flutter/material.dart';

/// ☀️ Sonne Widget - Animation Showcase
///
/// Zeigt eine animierte Sonne mit mehreren Schichten:
/// - Mehrere konzentrische Kreise für den Sonnenschein-Effekt
/// - Gradient-Farben für realistische Darstellung
/// - Wird in der Theme-Animation verwendet
class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160,
      child: SunShine(
        radius: 120,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xDDFC554F), Color(0xDDFFF79E)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 🌟 Sonnenschein-Effekt Widget
///
/// Erstellt konzentrische Kreise um die Sonne:
/// - Mehrere Schichten für den Glow-Effekt
/// - Transparente weiße Farbe mit Opacity
/// - Zentriert das Child-Widget
class SunShine extends StatelessWidget {
  final double radius;
  final Widget child;

  const SunShine({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
      child: Center(child: child),
    );
  }
}
