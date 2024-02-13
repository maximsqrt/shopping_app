import 'package:flutter/material.dart';

// Define custom color classes
class CustomColors {
  static const Color color1 = Color(0xFF00171F);
  static const Color color2 = Color(0xFF003459);
  static const Color color3 = Color(0xFF007EA7);
  static const Color color4 = Color(0xFF00A8E8);
  static const Color color5 = Colors.white; // #FFFFFF

  // Custom method to apply shadows and linear gradients
  static BoxDecoration applyGradient(Color color) {
    return BoxDecoration(
      color: color,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [color, CustomColors.color5],
      ),
    );
  }
}

class TextcolorZ {

  static const Color color1 = Color.fromARGB(255, 220, 233, 237);
}

class TextcolorZ2 {

  static const Color color2 = Color.fromARGB(255, 152, 190, 201);
}


//Evtl in 

// // AnimatedContainer(
//   duration: Duration(seconds: 5),
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//       colors: [CustomColors.color1, CustomColors.color2], // Change these colors over time
//     ),
//   ),
// );