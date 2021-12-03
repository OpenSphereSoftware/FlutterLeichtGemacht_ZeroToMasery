import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';
import 'package:flutterweb/presentation/eco_page/widgets/ecosystem.dart';

class EcoPage extends StatelessWidget {
  static const  String ecoPagePath =  "/ecosystem";
  const EcoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const Ecosystem(),
    ];

    return PageTemplate(
      child: ListView.builder(
          itemCount: partblocks.length,
          itemBuilder: (context, index) {
            return partblocks[index];
          }),
    );
  }
}
