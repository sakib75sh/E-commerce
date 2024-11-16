import 'package:e_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:e_commerce/src/blocs/block_ecommers_observer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = BlockEcommersObserver();
  runApp(const BlocEcommerceApp());
}

// void main() {
//   Bloc.observer = BlockEcommersObserver();
//   runApp(const BlocEcommerceApp());
// }
