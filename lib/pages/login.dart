import 'package:flutter/material.dart';
import 'package:ideapad_ui/pages/home_page.dart';
import 'package:ideapad_ui/pages/register.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome in IdeaPad!",
              style: TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 40),

            const Divider(),

            const SizedBox(height: 40),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Email or username'),
            ),

            const SizedBox(height: 12),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Login"),
                ),
              ],
            ),

            const SizedBox(height: 12),

            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
              },
              child: const Text(
                'Don’t Have An Account? Register To The Best Note App!',
                textAlign: TextAlign.center,
              ),
            ),
            // SignInButton(
            //   Buttons.Google,
            //   onPressed: (){},
            // )
          ],
        ),
      ),
    );
  }
}
