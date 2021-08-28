import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Screen 2"),
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onPressed: () {
                   Navigator.of(context).pop();
                   
                },
                text: "Navigate Back",
                buttonColor: Colors.yellow),
                SizedBox(height: 20,),
            CustomButton(
                onPressed: () {
                   Navigator.of(context).pushReplacementNamed("/screen1");
                   
                },
                text: "Go to Screen 1",
                buttonColor: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
