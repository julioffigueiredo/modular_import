import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_import/app/models/cliente_model.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  //final Cliente cliente;
  //HomeStoreBase({required this.cliente});

  Cliente? cliente;
  HomeStoreBase() {
    cliente = Modular.get<Cliente>();
    print('STORE PRINT => Cliente: ${cliente?.nome} End: ${cliente?.endereco.endereco}');
  }

  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}
