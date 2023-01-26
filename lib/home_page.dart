import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/main.dart';
import 'package:playground_riverpod/user.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  void onSubmit(WidgetRef ref, String value) {
     ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (value) => onSubmit(ref, value),
            ),
            TextField(
              onSubmitted: (value) => onSubmitAge(ref, value),
            ),
            Center(
              child: Text(user.age.toString()),
            ),
          ],
        ),
    );
  }
  }

