import 'package:app1/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:app1/textstyle.dart';

// final ensures that no further value is updated afterwards.
var startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class Widget1 extends StatelessWidget {
  const Widget1(this.color1, this.color2, {super.key});
  // const Widget1({key}):super(key: key);
  //here this is a constructor function.
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    // startAlignment = Alignment.bottomCenter;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
      // child: TextStyleWidget('Hello m')),
    );
  }
}
// APPROACH 2 FOR LIST OF COLORS
// class Widget1 extends StatelessWidget {
//   const Widget1(this.color1, {super.key});
//   // const Widget1({key}):super(key: key);
//   //here this is a constructor function.
//   final List<Color> color1;
//   @override
//   Widget build(context) {
//     // startAlignment = Alignment.bottomCenter;
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: color1, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(child: TextStyleWidget('Hello m')),
//     );
//   }
// }

 
// +++++++++CLASSES IN FLUTTER, BUILDING CUSTOM WIDGETS++++++++++

// class MyWidget extends StatelessWidget {  //class name first digit capital always.
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }