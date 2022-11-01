import 'package:dart_learning/views/modules/home/views/page_main.dart';
import 'package:dart_learning/views/modules/register/views/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPageModule extends Module{
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/register',
          child: (_, args) => RegisterPage(),
        ),
      ];
}