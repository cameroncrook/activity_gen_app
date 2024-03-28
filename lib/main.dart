// main.dart
import 'package:activity_gen/screens/generator_screen.dart';
import 'package:flutter/material.dart';
import 'package:activity_gen/utils/utility.dart' as utilities;

// firestore
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// screens
import 'package:activity_gen/screens/login_screen.dart';
import 'package:activity_gen/screens/activity_type.dart';
import 'package:activity_gen/screens/favorites_screen.dart';
import 'package:activity_gen/screens/create_screen.dart';


// Uncomment these to implement API functionality:
// import 'package:activity_gen/api/api_service.dart';
// import 'package:activity_gen/api/models/activity.dart';
// import 'package:activity_gen/api/endpoints.dart';


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity Finder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
        future: utilities.isLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final bool isLoggedIn = snapshot.data ?? false;
            return isLoggedIn ? MyHomePage() : LoginScreen();
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final inputs = Map();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ActiFinder"),
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesScreen()),
              );
            },
            icon: const Icon(Icons.favorite)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityTypeScreen(inputs: inputs)));
            }, 
            icon: const Icon(Icons.flash_on)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateScreen()));
            }, 
            icon: const Icon(Icons.edit)
          ),
          IconButton(
            onPressed: () async {
              await utilities.clearStorage();
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            }, 
            icon: Icon(Icons.exit_to_app)
          ),
        ],
      ),
      body: GeneratorScreen(),
    );
  }
}

