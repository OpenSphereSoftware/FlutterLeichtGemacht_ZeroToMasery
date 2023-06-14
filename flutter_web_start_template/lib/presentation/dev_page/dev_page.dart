import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
