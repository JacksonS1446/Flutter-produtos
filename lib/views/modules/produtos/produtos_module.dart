import 'package:dart_learning/views/modules/produtos/views/produtos_table.dart';

import 'package:flutter_modular/flutter_modular.dart';

class ProdutosModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/produtos',
          child: (_, args) => ProdutoPage(),
        ),
      ];
}
