import 'package:dart_learning/views/modules/login/views/login_page.dart';
import 'package:dart_learning/views/modules/register/views/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../produtos/views/produtos_table.dart';
import 'views/side_menu_page.dart';

class MenuModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const MenuPage(),
      children: [
        ChildRoute(
          '/register',
          child: (_, __) => RegisterPage(),
        ),
        ChildRoute(
          '/login',
          child: (_, __) => LoginPage(),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          '/produtos',
          child: (_, __) => ProdutoPage(),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}
