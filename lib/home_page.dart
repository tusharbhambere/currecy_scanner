import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Detector'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/voice.png'),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: const BoxDecoration(color: Colors.grey),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const SimpleDialog(
                    children: [Center(child: CircularProgressIndicator())],
                  ),
                );
              },
              child: const Text('Scan Currency')),
          const Spacer(),
        ],
      ),
    );
  }
}
