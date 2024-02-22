import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return const SelectColorPage();
  }
}
class SelectColorPage extends StatefulWidget {
  const SelectColorPage({super.key});
  @override
  State<SelectColorPage> createState() => _SelectColorPageState();
}

class _SelectColorPageState extends State<SelectColorPage> {
  Color selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Color'),
      ),
      body: Column(
        children: <Widget>[

          ColorPicker(
            pickersEnabled: const <ColorPickerType, bool>{
              ColorPickerType.wheel: true,
              ColorPickerType.accent: true,
              ColorPickerType.primary: true,
              ColorPickerType.bw: false,
              ColorPickerType.custom: false,
            },
            onColorChanged: (Color value) {
              setState(() {
                selectedColor = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

