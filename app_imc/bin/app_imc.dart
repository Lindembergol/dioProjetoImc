import 'package:app_imc/classes/funcoes/calc_imc.dart';
import 'package:app_imc/classes/funcoes/ler_valores.dart';
import 'package:app_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa();
  dynamic imc;

  try {
    print('Digite seu nome:');
    pessoa.setNome(lerConsole());

    print('Informe seu peso:');
    pessoa.setPeso(double.parse(lerConsole()));

    print('Informe sua altura (ex 1.76):');
    pessoa.setAltura(double.parse(lerConsole()));

    imc = calcIMC(pessoa.getPeso(), pessoa.getAltura());

    if (imc >= 40) {
      print('O IMC de ${pessoa.getNome()} é $imc');
      print('${pessoa.getNome()} está com obesidade grau 3');
      print('Quer morrer é!? bora fechar a boca!');
    } else if (imc >= 30 && imc < 39.9) {
      print('O IMC de ${pessoa.getNome()} é $imc');
      print('${pessoa.getNome()} está com obesidade grau 2');
      print('Borar treinar!');
    } else if (imc >= 25 && imc < 29.9) {
      print('O IMC de ${pessoa.getNome()} é $imc');
      print('${pessoa.getNome()} está com sobrepeso grau 1');
      print('Ta quase lá, bora treinar mais!');
    } else if (imc >= 18.5 && imc < 24.9) {
      print('O IMC de ${pessoa.getNome()} é $imc');
      print('${pessoa.getNome()} está com o peso ideal');
      print('Aì sim... Tão natural quanto a luz do dia');
    } else {
      print('O IMC de ${pessoa.getNome()} é $imc');
      print('${pessoa.getNome()} está com magreza');
      print('Meu fi quer sumir? bora comer!');
    }
  } catch (e) {
    print('Valor inválido!');
  }
}
