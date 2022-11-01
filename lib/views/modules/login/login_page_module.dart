import 'package:dart_learning/views/modules/login/views/login_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class LoginPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => LoginPage(),
        ),
      ];
}
