import 'package:dart_learning/views/modules/home/widgets/sidemenu/views/side_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: MenuPage()),
          Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
    );
  }
}
