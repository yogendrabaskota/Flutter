import 'package:flutter/material.dart';
import 'SoilCheckPage.dart'; // Importing the SoilCheckPage component
import 'HelpPage.dart'; // Importing the HelpPage component
import 'MorePage.dart'; // Importing the MorePage component

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set initial route
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'), // Home page
        '/soil_check': (context) => SoilCheckPage(), // Route for Soil Check Page
        '/help': (context) => HelpPage(), // Route for Help Page
        '/more': (context) => MorePage(), // Route for More Page
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'AGROTECHGUIDE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 6, 139, 10),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/a.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/soil_check'); // Navigate to Soil Check Page
            },
            child: Text(
              'Check Your Soil',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 16, // Increase font size
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 6, 139, 10),
              minimumSize: Size(180, 60), // Increase button size
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/help'); // Navigate to Help Page
                },
                child: Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 6, 139, 10),
                  minimumSize: Size(100, 30),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/more'); // Navigate to More Page
                },
                child: Text(
                  'More',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 6, 139, 10),
                  minimumSize: Size(100, 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
