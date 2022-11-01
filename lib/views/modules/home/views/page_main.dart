// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 1, 82, 173),
//         title: Center(
//           child: Row(
//             children: [
//               Text(
//                 'Página Inicial',
//                 style: TextStyle(
//                   fontSize: 25,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         color: Colors.grey[100],
//         child: Column(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 width: 400,
//                 color: Color.fromRGBO(30, 144, 255, 1),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Lista de Menu',
//                       style: TextStyle(fontSize: 20, color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         Icons.list_alt,
//                         color: Colors.white,
//                       ),
//                       title: Text(
//                         'Produtos',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         Icons.storage,
//                         color: Colors.white,
//                       ),
//                       title: Text(
//                         'Estoque',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                     ListTile(
//                       leading: Icon(
//                         Icons.account_box,
//                         color: Colors.white,
//                       ),
//                       title: Text(
//                         'Perfis',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
