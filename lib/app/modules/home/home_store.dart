import 'package:mobx/mobx.dart';
import 'package:modular_import/app/models/cliente_model.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final Cliente cliente;

  HomeStoreBase({required this.cliente});

  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}
