import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/user.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;

//Providers
//Provider
//StateProvider
//StateNotifier and StateNotifierProvider(43.41 min)
//ChangeNotifier & ChangeNotifierProvider(53.40 min)
//FutureProvider(59.23 min)

final fetchUserProvider = FutureProvider((ref) => {
 const url = 'https://jsonplaceholder.typicode.com/user/1';
 return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

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

