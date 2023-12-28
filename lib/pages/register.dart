import 'package:flutter/material.dart';
import 'package:ideapad_ui/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Register in IdeaPad!", style: TextStyle(fontSize: 22),),

            const SizedBox(height: 40),

            const Divider(),

            const SizedBox(height: 40),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Username'),
            ),

            const SizedBox(height: 12),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),

            const SizedBox(height: 12),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
            ),

            const SizedBox(height: 12),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Repeat Password'),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Sign-up!")),
              ],
            ),

            const SizedBox(height: 12),
            
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage()));
            }, child: const Text('Changed Your Mind? Back to the Log-in Page!', textAlign: TextAlign.center,)),
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