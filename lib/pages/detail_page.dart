import 'package:flutter/material.dart';
import 'package:four_pages_go_router/services/pages_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    PagesControllerr myController = Provider.of<PagesControllerr>(context);
    final textTwo = TextEditingController();
    final String textOneData = GoRouterState.of(context).extra! as String;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, centerTitle: true, title: Text(myController.result ?? textOneData)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textTwo,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () async {
                  if (textTwo.text.isNotEmpty) {
                    String? result = await context.pushNamed<String>('profile', extra: textTwo.text);
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
                child: const Text('next')),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  if (textTwo.text.isNotEmpty) {
                    context.pop(textTwo.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Error"),
                      ),
                    );
                  }
                },
                child: const Text('back')),
          ],
        ),
      ),
    );
  }
}
