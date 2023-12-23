mixin Notificavel{
    void enviarNotificacao(nome, evento){
        print('Olá, ${nome}! Sua participação no evento ${evento} foi confirmada!');
    }
}