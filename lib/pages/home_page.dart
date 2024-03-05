import 'package:flutter/material.dart';
import 'package:four_pages_go_router/services/pages_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textOne = TextEditingController();
    PagesControllerr myController = Provider.of<PagesControllerr>(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(myController.result ?? '')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textOne,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                if (textOne.text.isNotEmpty) {
                  String? result = await context.pushNamed<String>('detail', extra: textOne.text);
                  if (result != null) {
                    debugPrint('Received data from DetailPage: $result');
                    myController.updateResult(result);
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Error"),
                    ),
                  );
                }
              },
              child: const Text('next'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
