import 'package:dart_learning/views/modules/home/widgets/sidemenu/views/side_menu_page.dart';
import 'package:dart_learning/views/modules/produtos/views/produtos_table.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => MenuPage(),
          children: [
            ChildRoute(
              '/produtos',
              child: (_, __) => ProdutoPage(),
              transition: TransitionType.noTransition,
            ),
          ],
        ),
      ];
}
