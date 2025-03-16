import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/capture.dart';
import 'history.dart';
import 'learn.dart';
import 'upload.dart';
import 'settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 2;
  final List<Widget> pages = [
    const SettingsPage(),
    const UploadPage(),
    const CapturePage(),
    const HistoryPage(),
    const LearnPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload"),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt), label: "Camera"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "Learn"),
          ],
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
