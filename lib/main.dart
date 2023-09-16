import 'package:flutter/material.dart';
import 'package:expenses_app/widgets/expenses.dart';

// var kColorScheme =
//     ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 25, 18, 230));
// void main() {
//   runApp(
//     MaterialApp(
//       darkTheme: ThemeData.dark().copyWith(
//         useMaterial3: true,
//         colorScheme: kColorScheme,
//         cardTheme: const CardTheme().copyWith(
//           color: kColorScheme.secondaryContainer,
//           margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//           ),
//       ),
//       theme: ThemeData().copyWith(
//         useMaterial3: true,
//         colorScheme: kColorScheme,
//         appBarTheme: const AppBarTheme().copyWith(
//           backgroundColor: kColorScheme.onPrimaryContainer,
//           foregroundColor: kColorScheme.primaryContainer,
//         ),
//         cardTheme: const CardTheme().copyWith(
//           color: kColorScheme.secondaryContainer,
//           margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: kColorScheme.primaryContainer,
//           ),
//         ),
//         textTheme: ThemeData().textTheme.copyWith(
//               titleLarge: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: kColorScheme.onSecondaryContainer,
//                 fontSize: 22,
//               ),
//             ),
//       ),
//       home: const Expenses(),
//     ),
//   );
// }

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 126, 2, 243));
var kDarkColorScheme =
   ColorScheme.fromSeed(seedColor: Color.fromARGB(197, 251, 255, 2));
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondary.withOpacity(0.8),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.secondary,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondary.withOpacity(0.8),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primary,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.secondary,
                fontSize: 22,
              ),
            ),
      ),
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kColorScheme.primary,
              kColorScheme.secondary,
            ],
          ),
        ),
        child: const Expenses(),
      ),
    ),
  );
}
