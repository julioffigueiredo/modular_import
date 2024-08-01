import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_import/app/modules/home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
