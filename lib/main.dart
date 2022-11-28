import 'package:flutter/material.dart';
import 'package:uado/auth/login_initial_page.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'screens/mechanics_list.dart';
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
          primarySwatch: Colors.blue,
        ),
        home:  MechanicsListPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Home page.',
            ),

          ],
        ),
      ),
    );
  }
}
