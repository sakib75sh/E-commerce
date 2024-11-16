import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Home Screen",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            FloatingActionButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               "Home Screen",
//               style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: Theme.of(context).colorScheme.primary),
//             ),
//             Container(
//               height: 30,
//               width: 30,
//               color: Colors.amberAccent,
//             ),
//             Container(
//               height: 30,
//               width: 30,
//               color: Colors.amberAccent,
//             ),

//             Container(
//               height: 30,
//               width: 30,
//               color: Colors.amberAccent,
//             ),

//             Container(
//               height: 30,
//               width: 30,
//               color: Colors.amberAccent,
//             ),

//             // FloatingActionButton(
//             //   onPressed: () {
//             //     context.pop();
//             //   },
//             //   child: const Text('Back'),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
