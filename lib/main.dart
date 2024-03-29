import 'package:chatgpt_clone/screens/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/constant.dart';
import 'providers/chats_provider.dart';
import 'providers/models_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatGPT Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const SplashScreen(),
      ),
    );
  }
}


