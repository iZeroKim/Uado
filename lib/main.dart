import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uado/auth/login_initial_page.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'package:uado/screens/garage_details.dart';
import 'package:uado/screens/dash_board.dart';
import 'package:uado/screens/garage_review.dart';
import 'package:uado/screens/services.dart';
import 'screens/garage_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MechanicProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uado',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          appBarTheme: const AppBarTheme(
            backwardsCompatibility: false, // 1
            systemOverlayStyle: SystemUiOverlayStyle.light, // 2
            foregroundColor: Colors.white,
          ),
        ),

        home:  const InitialLoginPage(),
        // home: const AddGarageReview(),
      ),
    );
  }
}

