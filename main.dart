import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_options.dart'; 
import 'repositories/service repositories.dart';
import 'viewmodels/service viewmodels.dart';
import 'screens/home screen.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final firestore = FirebaseFirestore.instance;
    final serviceRepository = ServiceRepository(firestore);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ServiceViewModel>(
          create: (_) => ServiceViewModel(repository: serviceRepository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'S.Rocks.Music',
        theme: darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
