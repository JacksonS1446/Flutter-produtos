import 'package:dart_learning/views/modules/produtos/produtos_module.dart';
import 'package:dart_learning/views/modules/home/home_page_module.dart';
import 'package:dart_learning/views/modules/login/login_page_module.dart';
import 'package:dart_learning/views/modules/register/register_page_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'loading_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute('/', child: ((context, args) => LoadingPage())),
    ModuleRoute(Modular.initialRoute, module: LoginPageModule()),
    ModuleRoute('/', module: HomePageModule()),
    ModuleRoute('/produtos', module: ProdutosModule()),
    ModuleRoute('/register', module: RegisterPageModule()),
    WildcardRoute(
      child: (_, __) => const Scaffold(
        body: Center(
          child: Text(
            "A página não existe",
          ),
        ),
      ),
    ),
  ];
}
