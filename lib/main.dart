import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'images/kemenkeu.png';
  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/dikti.png';
          break;
        case 1:
          fileName = 'images/kemenkeu.png';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            onPressed: () {
              selectImage(1);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(fileName, height: 350.0, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
