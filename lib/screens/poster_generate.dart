import 'package:flutter/material.dart';

class PosterGenerationScreen extends StatefulWidget {
  static const String id = 'posterGeneration_screen';
  final String templateName;

  const PosterGenerationScreen({Key? key, required this.templateName})
      : super(key: key); // Added 'required' keyword

  @override
  State<PosterGenerationScreen> createState() => _PosterGenerationScreenState();
}

class _PosterGenerationScreenState extends State<PosterGenerationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poster Generation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Preview of Generated Poster'),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Download Poster'),
                      content:
                          const Text('Implement download functionality here'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Download Poster'),
            ),
          ],
        ),
      ),
    );
  }
}
