import 'dart:io'; // Importação necessária para ler dados do terminal (I/O)

void main() {
  // O clássico 'Hello World!' solicitado na atividade
  print('Olá, mundo!\n');
  
  print('=== Gerador de Tabuada Jedi ===');
  print('Digite um número inteiro:');

  // Lendo a entrada do usuário;
  // O readLineSync() retorna uma String que pode ser nula (String?);
  // O operador ?? '0' é uma boa prática: se vier nulo, ele assume '0'.
  String input = stdin.readLineSync() ?? '0';

  // Convertendo a String para int;
  // Usamos int.tryParse em vez de int.parse para evitar que o programa quebre;
  // (lance uma exceção) caso o usuário digite letras no lugar de números;
  // Nessa exceção quando uma letra é lida ele transforma em 0 a Tabuada.
  int numero = int.tryParse(input) ?? 0;

  print('\nTabuada do $numero:');
  print('-------------------');

  // Laço clássico de 1 a 10
  for (int i = 1; i <= 10; i++) {
    // Interpolação de string no Dart é feita com o símbolo $ 
    // Para expressões matemáticas dentro da string, usamos ${}
    print('$numero x $i = ${numero * i}');
  }
  print('-------------------');
}