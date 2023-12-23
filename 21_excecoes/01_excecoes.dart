void main(){
    print('21.1.0 - Exceções\n');
    // Try/Catch
    caso1();
    // Try/On/Catch
    caso2();
    // Try/Catch/StachTrace
    caso3();
    // Try/Finaly
    caso4();
    // Try/Catch/Throw/Finally
    caso5();
}

caso1(){
    try{
        int resultado = 1 ~/ 0;
        print('Resultado: $resultado');
    }catch(e){
        print('Exceção: $e');
    }
}

caso2(){
    try{
        int resultado = 1 ~/ 0;
        print('Resultado: $resultado');
    }on IntegerDivisionByZeroException{
        print('Exceção: Não é possível dividir por zero');
    }
    catch(e){
        print('Exceção: $e');
    }
}

caso3(){
    try{
        int resultado = 1 ~/ 0;
        print('Resultado: $resultado');
    }catch(e, s){
        print('Exceção: $e');
        print('Stack Trace: $s');
    }
}

caso4(){
    try{
        int resultado = 1 ~/ 0;
        print('Resultado: $resultado');
    }catch(e){
        print('Exceção: $e');
    }finally{
        print('Com ou sem exceção, finally será executado');
    }
}

caso5(){
    try{
        int valorA = 1, valorB = 0;
        double resultado = valorA / valorB;
        if(resultado.isInfinite){
            throw Exception('A variável valorB não pode ser zero');
        }
        print('Resultado: $resultado');
    }catch(e){
        print('Exceção: $e');
    }finally{
        print('Com ou sem exceção, finally será executado');
    }
}