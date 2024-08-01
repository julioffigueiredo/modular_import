// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:modular_import/app/models/Endereco.dart';

class Cliente {
  String nome = 'Julio';
  int anos = 44;
  Endereco endereco;

  Cliente(
    this.endereco,
  );
}
