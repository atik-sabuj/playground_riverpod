import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/user.dart';
import 'home_page.dart';

//Providers
//Provider
//StateProvider
//StateNotifier and StateNotifierProvider(43.41 min)
//ChangeNotifier & ChangeNotifierProvider

final userProvider = StateNotifierProvider<UserNotifier,User>(
        (ref) => UserNotifier(),
);

final userChangeNotifierProvider = ChangeNotifierProvider((ref) => UserNotifierChange());

void main() {
  runApp(
    const ProviderScope(
    child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

