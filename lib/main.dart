import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uado/auth/provider/auth_provider.dart';
import 'package:uado/auth/register_page.dart';
import 'package:uado/providers/cart_provider.dart';
import 'package:uado/providers/clubs_provider.dart';
import 'package:uado/providers/garage_provider.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'package:uado/providers/trips_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  bool hasLoggedIn = await getLoginStatus();
  bool isRegistered = await getRegisterStatus();
  String loginRole= await getLoginRole();
  runApp( MyApp(isRegistered: isRegistered, hasLoggedIn: hasLoggedIn, loginRole: loginRole,));
}

class MyApp extends StatelessWidget {
  final bool isRegistered, hasLoggedIn;
  final String loginRole;
  MyApp({required this.isRegistered, required this.hasLoggedIn, required this.loginRole});


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
    //       return AnimatedSplashScreen(
    //   splash: Image(image: AssetImage('assets/images/logo_png.png'),),
    // duration: 3000,
    // splashTransition: SplashTransition.rotationTransition,
    // backgroundColor: primaryDarkColor,
    // nextScreen: newInstall == null ? IntroScreens(): LoginScreen() );

        // home: AnimatedSplashScreen(
        //   curve: Curves.easeIn,
        //   splash: Image(image: AssetImage('assets/images/car.png'),height: 100, width: 100,),
        //   duration: 1500,
        //   splashTransition: SplashTransition.rotationTransition,
        //   backgroundColor:Color.fromRGBO(88,133,96, 1),
        //   nextScreen: isRegistered ? (hasLoggedIn? DashBoard() :InitialLoginPage()) :RegisterPage(),
        // )
        home: RegisterPage(),

      ),
    );
  }
}

Future<bool> getRegisterStatus() async {
  final prefs = await SharedPreferences.getInstance();
  bool isRegistered = prefs.getBool('is_registered') ?? false;
  print("Is registered $isRegistered");
  return isRegistered;
}

Future<String> getLoginRole() async{
  final prefs = await SharedPreferences.getInstance();
  String loginRole = prefs.getString("login_role") ?? "user";
  return loginRole;
}

Future<bool> getLoginStatus() async {
  final prefs = await SharedPreferences.getInstance();
  bool hasLoggedIn = prefs.getBool('has_logged_in') ?? false;
  print("Logged in $hasLoggedIn");
  return hasLoggedIn;
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('has_logged_in', true);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to the Home Screen'),
      ),
    );
  }
}