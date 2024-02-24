import 'package:flutter/material.dart';
import 'package:posterer/screens/poster_generate.dart';

class SelectTemplateScreen extends StatefulWidget {
  static const String id = 'template_screen';

  const SelectTemplateScreen({Key? key})
      : super(key: key); // Adjusted constructor

  @override
  State<SelectTemplateScreen> createState() => _SelectTemplateScreenState();
}

class _SelectTemplateScreenState extends State<SelectTemplateScreen> {
  final List<String> templateNames = [
    'Template 1',
    'Template 2',
    'Template 3',
    'Template 4',
    'Template 5',

    // Add more template names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Template'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: templateNames.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PosterGenerationScreen(
                      templateName: templateNames[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(templateNames[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}






//1. give images inside templates
//2. be able to select that template
//3. review the templete
//4. be able to add image from gallery