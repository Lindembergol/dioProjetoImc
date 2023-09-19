import 'dart:convert';
import 'dart:io';

String lerConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? '';
}
