import 'dart:math';
// Import the 'dart:math' library for random number generation.
// Importé "dart:math" pour la generation de numbres aléatoires

import 'package:flutter/material.dart'; // Import the Flutter material library.

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() =>
      _DiceState(); // Define the state for the Dice widget.
}

class _DiceState extends State<Dice> {
  int leftDNumber =
      1; // Initialize the left dice number to 1. Initialise le dés gauche à 1
  int rightDNumber =
      1; // Initialize the right dice number to 1.  Initialise le dés droite à 1
  int? number; // Declare a variable to store the sum of the two dice.
  // declaration de la variable number qui vas contenir la somme de deux dés

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  randomNumber(context);
                  // Appel la fonction randomNumber en lui passant le context
                });
              },
              child: Image.asset("images/dice$leftDNumber.png")),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  randomNumber(context);
                });
              },
              child: Image.asset("images/dice$rightDNumber.png")),
        ),
      ]),
    );
  }

  void randomNumber(context) {
    rightDNumber =
        Random().nextInt(6) + 1; // Generate a random number for the right dice.
    // genere un nombre entre 1 et 6
    leftDNumber =
        Random().nextInt(6) + 1; // Generate a random number for the left dice.
    number = rightDNumber +
        leftDNumber; // Calculate the sum of the two dice numbers.
    ScaffoldMessenger.of(context).showSnackBar(
      // Renvoi un Snack
      SnackBar(
        content: Center(
          child: Text(
            "You got $number", // Display the sum of the dice numbers in a message.
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        duration:
            const Duration(seconds: 2), // Display the message for 2 seconds.
        backgroundColor: number! >= 6
            ? Colors.green
            : Colors.red, // Set the message background color based on the sum.
        // La couleur d'arriere plan dépandra de la sommme
      ),
    );
  }
}
