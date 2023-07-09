import 'package:flutter/material.dart';
import 'package:test/option_container.dart';
import 'package:test/rainbow_gradient.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Widget> notes = [
    const Text(
      'Notes',
      style: TextStyle(
        color: Colors.black87,
        fontSize: 40,
      ),
    ),
  ];

  void removeElement() {
    if (notes.length > 1) {
      setState(() {
        notes.removeLast();
      });
    }
  }

  void addElement() {
    setState(() {
      Widget add = const OptionContainer();
      notes.add(add);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'New Generation Keep Notes',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor:
            const Color.fromARGB(255, 237, 245, 128).withOpacity(0.5),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: addElement,
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: Decorating.blur,
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: removeElement,
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: Decorating.blur,
              child: const Text(
                '-',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.cyan,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: Decorating.rainbow,
        child: SingleChildScrollView(
          primary: true,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: notes,
            ),
          ),
        ),
      ),
    );
  }
}
