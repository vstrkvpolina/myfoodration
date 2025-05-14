// import 'package:flutter/material.dart';
// import 'package:myfoodration/screens/adding_screen.dart';
// import 'package:myfoodration/screens/home_screen.dart';
// import 'package:myfoodration/screens/screens.dart';

// class ScreenSwitcher extends StatefulWidget {
//   const ScreenSwitcher({super.key});

//   @override
//   State<ScreenSwitcher> createState() => _ScreenSwitcherState();
// }

// class _ScreenSwitcherState extends State<ScreenSwitcher> {
//   int _currentIndex = 0;

//   // Твои экраны (можешь подставить свои виджеты)
//   final List<Widget> _screens = [
//     HomeScreen(), //  ведёт на home_screen
//     AddingScreen(), //  ведёт на adding_screen
//     RationScreen(), //  ведёт на ration_screen
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex], // Тут переключаются экраны
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index; // Обновляем экран
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Главная',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: 'Добавить еду',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Экран рациона',
//           ),
//         ],
//       ),
//     );
//   }
// }

// Scaffold(
//   body: ...,
//   bottomNavigationBar: Container(
//     padding: EdgeInsets.symmetric(horizontal: 20),
//     color: Colors.blue,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           icon: Icon(Icons.home),
//           onPressed: () {},
//         ),
//         ElevatedButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(Icons.settings),
//           onPressed: () {},
//         ),
//       ],
//     ),
//   ),
// );


