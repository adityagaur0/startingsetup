import 'package:flutter/material.dart';
import 'package:startingsetup/demoButton.dart';

//video 144
// therefore this is enhancement of below code
// When clicked on yes or no here Build is not called again and only demo button
// build called therefore increasing performance of the app
class UIUpdatesDemo extends StatelessWidget {
  const UIUpdatesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    print('UIUpdatesDemo BUILD called');
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            DemoButton(),
          ],
        ),
      ),
    );
  }
}

//video 143 - 144

//when clicked on NO Or Yes button build method is called again and again 
// wether ui updating or not.

// class UIUpdatesDemo extends StatefulWidget {
//   const UIUpdatesDemo({super.key});

//   @override
//   StatefulElement createElement() {
//     print('UIUpdatesDemo CREATEELEMENT called');
//     return super.createElement();
//   }

//   @override
//   State<UIUpdatesDemo> createState() {
//     return _UIUpdatesDemo();
//   }
// }

// class _UIUpdatesDemo extends State<UIUpdatesDemo> {
//   var _isUnderstood = false;

//   @override
//   Widget build(BuildContext context) {
//     print('UIUpdatesDemo BUILD called');
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'Do you understand how Flutter updates UIs?',
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       _isUnderstood = false;
//                     });
//                   },
//                   child: const Text('No'),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       _isUnderstood = true;
//                     });
//                   },
//                   child: const Text('Yes'),
//                 ),
//               ],
//             ),
//             if (_isUnderstood) const Text('Awesome!'),
//           ],
//         ),
//       ),
//     );
//   }
// }
