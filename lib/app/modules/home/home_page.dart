import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_import/app/models/cliente_model.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Observer(
        builder: (context) => Text('${store.counter}'),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              store.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              HomeStore? store = Modular.tryGet<HomeStore>();
              print(store?.counter);

              Cliente? cliente = Modular.tryGet<Cliente>();
              print('Cliente: ${cliente?.nome} \n End: ${cliente?.endereco.endereco}');
            },
            child: Icon(Icons.abc_rounded),
          ),
        ],
      ),
    );
  }
}
