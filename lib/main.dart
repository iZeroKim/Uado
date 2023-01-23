import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:uado/auth/provider/auth_provider.dart';
import 'package:uado/auth/role_selection_page.dart';
import 'package:uado/providers/cart_provider.dart';
import 'package:uado/providers/clubs_provider.dart';
import 'package:uado/providers/garage_provider.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'package:uado/providers/trips_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        ChangeNotifierProvider(create: (_)=> ClubProvider()),
        ChangeNotifierProvider(create: (_)=> CartProvider()),
        ChangeNotifierProvider(create: (_)=> AuthProvider()),
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

        home: const RoleSelectionPage(),
        // home: const CarDetails(),

      ),
    );
  }
}

