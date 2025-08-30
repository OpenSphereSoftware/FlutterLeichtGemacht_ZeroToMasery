import 'package:flutter/material.dart';

import 'widgets/eingaben_formulare/checkbox_radio_example.dart';
import 'widgets/eingaben_formulare/dropdown_button_example.dart';
import 'widgets/eingaben_formulare/slider_example.dart';
import 'widgets/eingaben_formulare/switch_example.dart';
import 'widgets/eingaben_formulare/textfield_form_example.dart';
import 'widgets/grundlagen/buttons_example.dart';
import 'widgets/grundlagen/floating_action_button_example.dart';
import 'widgets/grundlagen/icon_example.dart';
import 'widgets/grundlagen/image_example.dart';
import 'widgets/grundlagen/material_app_scaffold_appbar_example.dart';
import 'widgets/grundlagen/stateful_widget_example.dart';
import 'widgets/grundlagen/stateless_widget_example.dart';
import 'widgets/grundlagen/text_example.dart';
import 'widgets/layout_struktur/card_example.dart';
import 'widgets/layout_struktur/container_example.dart';
import 'widgets/layout_struktur/divider_example.dart';
import 'widgets/layout_struktur/expanded_flexible_example.dart';
import 'widgets/layout_struktur/listtile_example.dart';
import 'widgets/layout_struktur/row_column_example.dart';
import 'widgets/layout_struktur/sizedbox_example.dart';
import 'widgets/layout_struktur/stack_example.dart';
import 'widgets/navigation/bottom_navigation_bar_example.dart';
import 'widgets/navigation/drawer_example.dart';
import 'widgets/navigation/navigator_example.dart';
import 'widgets/navigation/tabbar_example.dart';
import 'widgets/scroll_listen/gridview_example.dart';
import 'widgets/scroll_listen/listview_example.dart';
import 'widgets/scroll_listen/single_child_scrollview_example.dart';
import 'widgets/theme_animation/theme_animation_page.dart';
import 'widgets/themes/theme_example.dart';

void main() {
  runApp(const FlutterGrundlagenApp());
}

class FlutterGrundlagenApp extends StatelessWidget {
  const FlutterGrundlagenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grundlagen - Widget Examples',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
      home: const WidgetExamplesHomePage(),
    );
  }
}

class WidgetExamplesHomePage extends StatelessWidget {
  const WidgetExamplesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget Grundlagen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lerne die Grundlagen von Flutter Widgets durch praktische Beispiele:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            // Grundlagen Section
            const Text(
              '📱 Grundlagen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'Material Scaffold',
                  'Seiten Layout',
                  Icons.apps,
                  Colors.blue,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MaterialAppExample())),
                ),
                _buildExampleCard(
                  context,
                  'Text',
                  'Text anzeigen',
                  Icons.text_fields,
                  Colors.orange,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TextExample())),
                ),
                _buildExampleCard(
                  context,
                  'Image',
                  'Bilder anzeigen',
                  Icons.image,
                  Colors.purple,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageExample())),
                ),
                _buildExampleCard(
                  context,
                  'Icon',
                  'Icons anzeigen',
                  Icons.star,
                  Colors.yellow,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const IconExample())),
                ),
                _buildExampleCard(
                  context,
                  'Buttons',
                  'Verschiedene Buttons',
                  Icons.smart_button,
                  Colors.teal,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ButtonExample())),
                ),
                _buildExampleCard(
                  context,
                  'FloatingActionButton',
                  'Schwebender Button',
                  Icons.add_circle,
                  Colors.pink,
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FloatingActionButtonExample()),
                  ),
                ),
                _buildExampleCard(
                  context,
                  'StatelessWidget',
                  'Unveränderliche UI',
                  Icons.text_fields,
                  Colors.orange,
                  () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const StatelessWidgetExample())),
                ),
                _buildExampleCard(
                  context,
                  'StatefulWidget',
                  'Veränderliche UI',
                  Icons.countertops,
                  Colors.purple,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const StatefulWidgetExample())),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Layout & Struktur Section
            const Text(
              '📦 Layout & Struktur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'Container',
                  'Padding, Margin, Decoration',
                  Icons.crop_square,
                  Colors.indigo,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ContainerExample())),
                ),
                _buildExampleCard(
                  context,
                  'Row & Column',
                  'Haupt-Linienlayouts',
                  Icons.view_column,
                  Colors.green,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RowColumnExample())),
                ),
                _buildExampleCard(
                  context,
                  'Stack',
                  'Überlagerte Widgets',
                  Icons.layers,
                  Colors.deepOrange,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const StackExample())),
                ),
                _buildExampleCard(
                  context,
                  'Expanded / Flexible',
                  'Flexible Layouts',
                  Icons.expand,
                  Colors.cyan,
                  () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpandedFlexibleExample())),
                ),
                _buildExampleCard(
                  context,
                  'SizedBox',
                  'Abstandshalter',
                  Icons.space_bar,
                  Colors.brown,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SizedBoxExample())),
                ),
                _buildExampleCard(
                  context,
                  'Divider',
                  'Trennlinien',
                  Icons.remove,
                  Colors.grey,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DividerExample())),
                ),
                _buildExampleCard(
                  context,
                  'Card',
                  'Karten-Layout',
                  Icons.credit_card,
                  Colors.amber,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CardExample())),
                ),
                _buildExampleCard(
                  context,
                  'ListTile',
                  'Listen-Elemente',
                  Icons.list,
                  Colors.lime,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ListTileExample())),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Scroll & Listen Section
            const Text(
              '📜 Scroll & Listen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'ListView',
                  'Builder + statisch',
                  Icons.list_alt,
                  Colors.deepPurple,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ListViewExample())),
                ),
                _buildExampleCard(
                  context,
                  'GridView',
                  'Builder + statisch',
                  Icons.grid_on,
                  Colors.teal,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const GridViewExample())),
                ),
                _buildExampleCard(
                  context,
                  'SingleChildScrollView',
                  'Einzelnes scrollbares Widget',
                  Icons.swap_vert,
                  Colors.indigo,
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SingleChildScrollViewExample()),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Navigation Section
            const Text(
              '🔄 Navigation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'Navigator',
                  'Seitenwechsel push/pop',
                  Icons.navigation,
                  Colors.red,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigatorExample())),
                ),
                _buildExampleCard(
                  context,
                  'BottomNavigationBar',
                  'Untere Navigation',
                  Icons.view_column,
                  Colors.deepOrange,
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()),
                  ),
                ),
                _buildExampleCard(
                  context,
                  'Drawer',
                  'Seitenmenü',
                  Icons.menu,
                  Colors.purple,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerExample())),
                ),
                _buildExampleCard(
                  context,
                  'TabBar',
                  'Tab-Navigation',
                  Icons.tab,
                  Colors.indigo,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TabBarExample())),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Eingaben & Formulare Section
            const Text(
              '✍️ Eingaben & Formulare',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'TextField & Form',
                  'Text-Eingaben + Validierung',
                  Icons.input,
                  Colors.teal,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TextFieldFormExample())),
                ),
                _buildExampleCard(
                  context,
                  'Checkbox & Radio',
                  'Auswahl-Elemente',
                  Icons.check_box,
                  Colors.blue,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckboxRadioExample())),
                ),
                _buildExampleCard(
                  context,
                  'Switch',
                  'Ein/Aus-Schalter',
                  Icons.toggle_on,
                  Colors.orange,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SwitchExample())),
                ),
                _buildExampleCard(
                  context,
                  'Slider',
                  'Wert-Schieber',
                  Icons.tune,
                  Colors.purple,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SliderExample())),
                ),
                _buildExampleCard(
                  context,
                  'DropdownButton',
                  'Auswahl-Liste',
                  Icons.arrow_drop_down,
                  Colors.indigo,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DropdownButtonExample())),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Styling & Themen Section
            const Text(
              '🎨 Styling & Themen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'Theme & ThemeData',
                  'Light/Dark Theme + Styling',
                  Icons.palette,
                  Colors.pink,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemeExample())),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Animationen & State Management Section
            const Text(
              '🎬 Animationen & State Management',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildExampleCard(
                  context,
                  'Theme Animation',
                  'Provider + ChangeNotifier + Animationen',
                  Icons.animation,
                  Colors.indigo,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemeAnimationPage())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Flexible(
                child: Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
