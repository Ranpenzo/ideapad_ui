import 'package:flutter/material.dart';
import 'package:ideapad_ui/pages/login.dart';
import 'package:ideapad_ui/pages/settings.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final precachedProfilePicture = Image.asset(
    "./assets/pfp.gif",
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 40,
            ),
            // ! User row
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ClipOval(child: precachedProfilePicture),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Ranpenzo!",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            Expanded(
              child: ListView(
                children: [                  
                  // ! Settings button
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 5.0;                        
                        return 2.0;
                      })
                    ),                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                  // ! Log out button
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 5.0;                        
                        return 2.0;
                      })
                    ), 
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Log-out",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.exit_to_app)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
