import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CustomButtons(),
    ),
  );
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableButton(),
            SizedBox(height: 10),
            SelectableButton(),
            SizedBox(height: 10),
            SelectableButton(),
            SizedBox(height: 10),
            SelectableButton(),
          ],
        ),
      ),
    );
  }
}

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {

  bool isSelected = false;

  String get buttonText {
    if (isSelected) {
      return "Selected";
    } else {
      return "Not selected";
    }
  }

  Color get textColor {
    if (isSelected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  Color get buttonColor {
    if (isSelected) {
      return Colors.blue[500]!;
    } else {
      return Colors.blue[50]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
        ),
        child: Text(buttonText),
      ),
    );
  }
}
