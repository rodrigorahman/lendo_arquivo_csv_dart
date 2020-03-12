import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';

Future<void> run(path_file) async {
  var arquivo = File(path_file).openRead();
  
  var csv = await arquivo
    .transform(utf8.decoder)
    .transform(CsvToListConverter(fieldDelimiter: ';'))
    .toList();

  csv.forEach((linha) {
    var nome = linha[0];
    var telefone = linha[1];
    var cidade = linha[2];

    print('nome: $nome, telefone: $telefone, cidade: $cidade');
  });
    

}