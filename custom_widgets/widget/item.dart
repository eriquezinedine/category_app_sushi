// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:take_sushi/state/scroll_state.dart';

// class Item extends StatefulWidget {
//   const Item({super.key, required this.index, required this.color, required this.onTap,});

//   final int index;
//   final Color? color;
//   final VoidCallback onTap;
//   @override
//   State<Item> createState() => _ItemState();
// }

// class _ItemState extends State<Item> {

//   int subIndex = 0;
//   @override
//   void initState() {
//     subIndex = widget.index;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     const column = 2;
//     const separacion = 10;
//     const espacioTotalHorizontal = (column - 1) * separacion;
//     // final state = Provider.of<ScrollState>(context);



//         final anchoContenedor = (size.width - espacioTotalHorizontal) / column;
//     return Consumer<ScrollState>(builder: (context, value, child) => 
    
//     AnimatedPositioned(
//         duration: const Duration(milliseconds: 200),
//         left: (subIndex % column) * ((size.width / column) + separacion),
//         top: (subIndex ~/ column) * ((size.height * 0.30) + separacion),
//         child: GestureDetector(
//           onTap: () {
//            widget.onTap();
//            value.changeIndex(widget.index);
//            if(subIndex != 0){
//               subIndex = subIndex -1;
//               setState(() {
                
//               });
//            }
//           },
//           child: Container(
//                   color: widget.color,
//                   width: anchoContenedor,
//                   height: size.height * 0.30,
//                 ),
//         ),
//       ));
//   }
// }
// /*

//  () {
//             setState(() {
//               colors[subIndex] = null; // Marcar como eliminado
//             });

//             Future.delayed(const Duration(milliseconds: 10), () {
//               setState(() {
//                 colors.remove(null); // Eliminar después de la animación
//               });
//             });
//           },


//  */