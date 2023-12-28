import 'package:flutter/material.dart';
import 'package:ideapad_ui/theme_service.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Text(
                  "Settings",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const Setting(),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Made by Ranpenzo with heart <3"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Setting extends StatefulWidget {
  const Setting({
    super.key,
  });

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> { 

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("App theme"),
                  Text("Change theme between light and dark"),
                ],
              ),
              Switch(
                value: themeService.isDarkMode,
                onChanged: (value) {
                  final provider = Provider.of<ThemeService>(context, listen: false);                  
                  provider.switchTheme(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
