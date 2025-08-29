/*
 * DART GRUNDLAGEN KURS - Lektion 4: Arithmetische Operatoren
 * ==========================================================
 * 
 * In dieser Lektion lernst du:
 * - Alle arithmetischen Operatoren in Dart
 * - Operator-Präzedenz (Reihenfolge der Ausführung)
 * - Typkonvertierungen zwischen int und double
 * - Praktische Anwendungen der Mathematik
 */

import 'dart:math';

void main() {
  print("=== ARITHMETISCHE OPERATOREN IN DART ===");
  print("");

  // ========================================
  // 1. GRUNDLEGENDE ARITHMETISCHE OPERATOREN
  // ========================================
  print("1. GRUNDLEGENDE ARITHMETISCHE OPERATOREN:");
  print("------------------------------------------");

  int a = 10;
  int b = 3;

  // Addition
  int summe = a + b;
  print(a.toString() + " + " + b.toString() + " = " + summe.toString());

  // Subtraktion
  int differenz = a - b;
  print(a.toString() + " - " + b.toString() + " = " + differenz.toString());

  // Multiplikation
  int produkt = a * b;
  print(a.toString() + " × " + b.toString() + " = " + produkt.toString());

  // Division (ergibt immer double!)
  double quotient = a / b;
  print(a.toString() + " ÷ " + b.toString() + " = " + quotient.toString());

  // Ganzzahlige Division (ergibt int)
  int ganzzahlQuotient = a ~/ b;
  print(a.toString() + " ~/ " + b.toString() + " = " + ganzzahlQuotient.toString() + " (ganzzahlige Division)");

  // Modulo (Rest der Division)
  int rest = a % b;
  print(a.toString() + " % " + b.toString() + " = " + rest.toString() + " (Rest der Division)");

  // ========================================
  // 2. OPERATOR-PRÄZEDENZ
  // ========================================
  print("");
  print("2. OPERATOR-PRÄZEDENZ:");
  print("------------------------");

  // Ohne Klammern (Standard-Reihenfolge)
  double ergebnis1 = 2 + 3 * 4;
  print("2 + 3 × 4 = " + ergebnis1.toString() + " (Multiplikation vor Addition)");

  // Mit Klammern (explizite Reihenfolge)
  double ergebnis2 = (2 + 3) * 4;
  print("(2 + 3) × 4 = " + ergebnis2.toString() + " (Addition vor Multiplikation)");

  // Komplexe Berechnung
  double ergebnis3 = (10 + 5) * 2 - 8 / 4;
  print("(10 + 5) × 2 - 8 ÷ 4 = " + ergebnis3.toString());

  // Schritt-für-Schritt Erklärung
  print("Schritt-für-Schritt:");
  print("1. (10 + 5) = 15");
  print("2. 15 × 2 = 30");
  print("3. 8 ÷ 4 = 2");
  print("4. 30 - 2 = 28");

  // ========================================
  // 3. TYPKONVERTIERUNGEN
  // ========================================
  print("");
  print("3. TYPKONVERTIERUNGEN:");
  print("------------------------");

  int ganzeZahl = 7;
  double dezimalZahl = 3.5;

  // int zu double
  double intZuDouble = ganzeZahl.toDouble();
  print(ganzeZahl.toString() + " (int) → " + intZuDouble.toString() + " (double)");

  // double zu int (abschneiden der Dezimalstellen)
  int doubleZuInt = dezimalZahl.toInt();
  print(dezimalZahl.toString() + " (double) → " + doubleZuInt.toString() + " (int)");

  // Runden
  int gerundet = dezimalZahl.round();
  print(dezimalZahl.toString() + " gerundet = " + gerundet.toString());

  // Aufrunden
  int aufgerundet = dezimalZahl.ceil();
  print(dezimalZahl.toString() + " aufgerundet = " + aufgerundet.toString());

  // Abrunden
  int abgerundet = dezimalZahl.floor();
  print(dezimalZahl.toString() + " abgerundet = " + abgerundet.toString());

  // ========================================
  // 4. INKREMENT UND DEKREMENT
  // ========================================
  print("");
  print("4. INKREMENT UND DEKREMENT:");
  print("------------------------------");

  int counter = 5;

  // Präfix-Inkrement (++ vor der Variable)
  print("Ursprünglicher Wert: " + counter.toString());
  int praefix = ++counter;
  print("++counter = " + praefix.toString() + ", counter ist jetzt " + counter.toString());

  // Postfix-Inkrement (++ nach der Variable)
  counter = 5; // Zurücksetzen
  int postfix = counter++;
  print("counter++ = " + postfix.toString() + ", counter ist jetzt " + counter.toString());

  // Dekrement
  counter = 5;
  int dekrement = --counter;
  print("--counter = " + dekrement.toString() + ", counter ist jetzt " + counter.toString());

  // ========================================
  // 5. ZUSAMMENGEFASSTE ZUWEISUNGEN
  // ========================================
  print("");
  print("5. ZUSAMMENGEFASSTE ZUWEISUNGEN:");
  print("-----------------------------------");

  int zahl = 10;
  print("Ursprünglicher Wert: " + zahl.toString());

  zahl += 5; // zahl = zahl + 5
  print("zahl += 5: " + zahl.toString());

  zahl -= 3; // zahl = zahl - 3
  print("zahl -= 3: " + zahl.toString());

  zahl *= 2; // zahl = zahl * 2
  print("zahl *= 2: " + zahl.toString());

  zahl ~/= 3; // zahl = zahl ~/ 3 (ganzzahlige Division)
  print("zahl ~/= 3: " + zahl.toString());

  zahl %= 2; // zahl = zahl % 2
  print("zahl %= 2: " + zahl.toString());

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Geometrie: Kreisberechnung
  double radius = 5.0;
  double pi = 3.14159;

  double umfang = 2 * pi * radius;
  double flaeche = pi * radius * radius;

  print("🔵 KREISBERECHNUNG:");
  print("Radius: " + radius.toString() + " cm");
  print("Umfang: " + umfang.toStringAsFixed(2) + " cm");
  print("Fläche: " + flaeche.toStringAsFixed(2) + " cm²");

  // Prozentrechnung
  double preis = 120.0;
  double rabattProzent = 15.0;

  double rabattBetrag = preis * (rabattProzent / 100);
  double neuerPreis = preis - rabattBetrag;

  print("");
  print("💰 PROZENTRECHNUNG:");
  print("Ursprünglicher Preis: " + preis.toStringAsFixed(2) + "€");
  print("Rabatt: " + rabattProzent.toStringAsFixed(0) + "%");
  print("Rabattbetrag: " + rabattBetrag.toStringAsFixed(2) + "€");
  print("Neuer Preis: " + neuerPreis.toStringAsFixed(2) + "€");

  // Zeitberechnung
  int stunden = 2;
  int minuten = 30;
  int sekunden = 45;

  int gesamtSekunden = stunden * 3600 + minuten * 60 + sekunden;

  print("");
  print("⏰ ZEITBERECHNUNG:");
  print(stunden.toString() + " Stunden, " + minuten.toString() + " Minuten, " + sekunden.toString() + " Sekunden");
  print("Gesamt in Sekunden: " + gesamtSekunden.toString());

  // ========================================
  // 7. MATHEMATISCHE FUNKTIONEN
  // ========================================
  print("");
  print("7. MATHEMATISCHE FUNKTIONEN:");
  print("-------------------------------");

  double zahl1 = 16.0;
  double zahl2 = 25.0;

  print("Quadratwurzel von " + zahl1.toString() + ": " + sqrt(zahl1).toString());
  print("Quadratwurzel von " + zahl2.toString() + ": " + sqrt(zahl2).toString());
  print(zahl1.toString() + " hoch 3: " + pow(zahl1, 3).toString());
  print("Maximum von " + zahl1.toString() + " und " + zahl2.toString() + ": " + max(zahl1, zahl2).toString());
  print("Minimum von " + zahl1.toString() + " und " + zahl2.toString() + ": " + min(zahl1, zahl2).toString());
  print("Absolutwert von -7: " + (-7).abs().toString());

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- +, -, *, /, ~/, % sind die grundlegenden Operatoren");
  print("- Klammern bestimmen die Ausführungsreihenfolge");
  print("- Division ergibt immer double, ~/ ergibt int");
  print("- ++ und -- können vor oder nach der Variable stehen");
  print("- +=, -=, *=, etc. sind Kurzschreibweisen");
}

/*
 * ÜBUNGEN:
 * Berechne den Flächeninhalt eines Rechtecks
 * Berechne den Durchschnitt von 5 Zahlen
 * Experimentiere mit verschiedenen mathematischen Funktionen
 */
