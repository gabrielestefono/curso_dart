void main() {
  print('06.2 - Labels');

  for (var i = 0; i < 2; i++) {
    for (var j = i; j < 2; j++) {
      for (var k = j; k < 2; k++) {
        print("${i} : ${j} : ${k}");
      }
    }
  }

  print('');

  loopExterno:
  for (var i = 0; i < 3; i++) {
    print("i = ${i}");
    loopInterno:
    for (var j = 0; j < 3; j++) {
      print("j = ${j}");
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('Loop Completo');
    }
  }

  print('');

  loopExterno:
  for (var i = 1; i <= 2; i++) {
    print("i = ${i}");
    loopInterno:
    for (var j = 1; j <= 3; j++) {
      print("j = ${j}");
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 1 && j == 1) continue loopExterno;
      print('Loop Completo');
    }
  }
}
