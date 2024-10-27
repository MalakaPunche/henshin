import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'login_with_email_page/login_with_email_page_widget.dart';
import 'community_forum/community_forum.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henshin App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginWithEmailPageWidget(), /*const CommunityForum(),*/
    );
  }
}
