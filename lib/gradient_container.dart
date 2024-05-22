import 'package:flutter/material.dart';
import 'package:flutter_udemy/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignmenet = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1,this.color2,{super.key});

  const GradientContainer.purple({super.key}) : color1 = Colors.deepPurple , color2 = Colors.indigo;
  
  final Color color1;
  final Color color2;

  @override
  Widget build(context){
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignmenet,
              colors: [
                color1,color2
              ],
            ),
          ),
          child:  Center(
            child: DiceRoller()
          ),
        );
  }
}


// ini adalah pendekatan pertama yang diambil untuk menyetel argumen 
// class GradientContainer extends StatelessWidget{
//   const GradientContainer({super.key,required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context){
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               begin: startAlignment,
//               end: endAlignmenet,
//               colors: colors,
//             ),
//           ),
//           child: const Center(
//             child: StyledText("bagus")
//           ),
//         );
//   }
// }