// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providermethodmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int val = 0;
  @override
  Widget build(BuildContext context) {
    int val = context.watch<ProviderModel>().x;

    return Scaffold(
      body: Center(
        child: Text(
          "Value: $val",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ProviderModel>().meth();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
