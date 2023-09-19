import 'package:app_imc/classes/funcoes/calc_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    expect(calcIMC(99, 1.76), 31.960227272727273);
  });
}
