import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/clubs_provider.dart';
import 'package:uado/providers/garage_provider.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'package:uado/providers/trips_provider.dart';
import 'package:uado/screens/dash_board.dart';

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
        ChangeNotifierProvider(create: (_) => GarageProvider()),
        ChangeNotifierProvider(create: (_) => MechanicProvider()),
        ChangeNotifierProvider(create: (_)=> TripProvider()),
        ChangeNotifierProvider(create: (_)=> ClubProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uado',
        theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(
            backwardsCompatibility: false, // 1
            systemOverlayStyle: SystemUiOverlayStyle.light, // 2
            foregroundColor: Colors.white,
          ),
        ),

        // home: const InitialLoginPage(),
        home: const DashBoard(),
      ),
    );
  }
}
