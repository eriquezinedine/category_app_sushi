// import 'package:flutter/material.dart';
// import 'package:take_sushi/widget/item.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//     List<Color?> colors = [Colors.redAccent, Colors.blueAccent, Colors.greenAccent, Colors.pinkAccent, Colors.amberAccent,];
  
//   @override
//   Widget build(BuildContext context) {


//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 28, 27, 27),
//       appBar: AppBar(),
//       body: Stack(
//   clipBehavior: Clip.antiAlias,
//   children: List.generate(
//     colors.length,
//     (index) {
//       final isDeleted = colors[index] == null;

//       return Item(index: index, color: colors[index], onTap: () {
//             setState(() {
//               colors[index] = null; // Marcar como eliminado
//             });

//             // Future.delayed(const Duration(milliseconds: 10), () {
//             //   setState(() {
//             //     colors.remove(null); // Eliminar después de la animación
//             //   });
//             // });
//           },);
//     },
//   ),
// ),
//     );
//   }
// }

// /*

//  return isDeleted ? const SizedBox.shrink() : Item(index: index, color: colors[index], onTap: () {
//             setState(() {
//               colors[index] = null; // Marcar como eliminado
//             });

//             // Future.delayed(const Duration(milliseconds: 10), () {
//             //   setState(() {
//             //     colors.remove(null); // Eliminar después de la animación
//             //   });
//             // });
//           },);


//  */