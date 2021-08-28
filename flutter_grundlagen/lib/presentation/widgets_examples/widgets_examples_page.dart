import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/custom_button.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/page_view_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';
import 'package:provider/provider.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text("Widgets Examples"),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContainerTextExample(),
                SizedBox(
                  height: 10,
                ),
                RowExpandedExample(),
                SizedBox(
                  height: 30,
                ),
                ProfilePicture(),
                SizedBox(
                  height: 30,
                ),
                RectImage(),
                SizedBox(
                  height: 30,
                ),
                MediaQueryExample(),
                SizedBox(
                  height: 30,
                ),
                PageViewExample(),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                    splashColor: Colors.blue,
                    onPressed: () {
                      print("Icon Button pressed!");
                    },
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      print("Text Button Pressed");
                    },
                    child: Container(
                        color: Colors.grey,
                        child: Text(
                          "Text Button",
                          style: TextStyle(color: Colors.white),
                        ))),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  buttonColor: Colors.blue[200]!,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen2");
                  },
                  text: 'Got to Screen 2',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  buttonColor: Colors.green[200]!,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen1");
                  },
                  text: 'Go to Screen 1',
                ),
                SizedBox(
                            width: 15,
                          ),
                          Switch(value: Provider.of<ThemeService>(context).isDarkModeOn, onChanged: (value) {
                            Provider.of<ThemeService>(context, listen:  false).toggleTheme();
                          })
              ],
            ),
          ),
        ));
  }
}
