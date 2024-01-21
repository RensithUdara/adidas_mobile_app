import 'package:adidas_mobile_app/firebase_options.dart';
import 'package:adidas_mobile_app/providers/signin_provider.dart';
import 'package:adidas_mobile_app/providers/signup_provider.dart';
import 'package:adidas_mobile_app/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => SignUpStateProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => SignInStateProvider(),
      )
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Adidas Mobile App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
