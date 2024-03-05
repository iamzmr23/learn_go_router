import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String textOneData = GoRouterState.of(context).extra! as String;
    final textFour = TextEditingController();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(textOneData)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textFour,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  context.pop(textFour.text);
                },
                child: const Text('back')),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
