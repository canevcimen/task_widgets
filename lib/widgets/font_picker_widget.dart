import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontPickerWidget extends StatefulWidget {
  const FontPickerWidget({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FontPickerWidget> {
  String _selectedFont = "Roboto";
  TextStyle _selectedFontTextStyle = GoogleFonts.roboto();

  final List<String> _googleFonts = [
    "Roboto",
    "Lato",
    "Oswald",
    "Pacifico",
    "Bebas Neue",
    "Nunito",
  ];

  void _pickFont() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Pick a font"),
          content: SingleChildScrollView(
            child: Column(
              children: _googleFonts.map((font) {
                return ListTile(
                  title: Text(font, style: GoogleFonts.getFont(font)),
                  onTap: () {
                    setState(() {
                      _selectedFont = font;
                      _selectedFontTextStyle = GoogleFonts.getFont(font);
                    });
                    Navigator.of(context).pop();
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _pickFont,
                child: const Text('Pick a font'),
              ),
              const SizedBox(height: 20),
              Text(
                'Selected font: $_selectedFont',
                style: _selectedFontTextStyle,
              ),
              const SizedBox(height: 20),
              Text(
                'You can see font style',
                style: _selectedFontTextStyle,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Hello My Big World',
                style: _selectedFontTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}