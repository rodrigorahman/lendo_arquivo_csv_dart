import 'dart:io';

import 'package:args/args.dart';
import 'package:lendo_arquivo_csv/lendo_arquivo_csv.dart' as lendo_arquivo_csv;

void main(List<String> arguments) {
  final parser = ArgParser()..addOption('path_file', abbr: 'p');

  var params = parser.parse(arguments);
  var pathFile = params['path_file'];
  if (pathFile == null) {
    stderr.writeln('Error: path_file required');
    exit(2);
  }

  lendo_arquivo_csv.run(pathFile);
}
