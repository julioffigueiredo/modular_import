import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_import/app/models/cliente_model.dart';
import 'package:modular_import/app/models/Endereco.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(Endereco.new);
    i.addSingleton(Cliente.new);
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
