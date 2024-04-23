#include "hbclass.ch"

CLASS cCadastro

    DATA nome //:= SPACE(30)
    DATA sobreNome //:= SPACE(30)
    DATA nasc //:= date()
    DATA signo //:= SPACE(15)
    DATA altura //:= SPACE(4)
    DATA peso //:= SPACE(6)

    METHOD cNome(nome, sobreNome, signo, altura, peso) 
    METHOD Idade(nasc)
    METHOD Show()

ENDCLASS

METHOD cNome(nome, sobreNome, nasc, signo, altura, peso) CLASS cCadastro

    ::nome := nome
    ::sobreNome := sobreNome
    ::signo := signo
    ::altura := altura
    ::peso  := peso

RETURN Self

METHOD Idade()
    ::nasc := nasc
    oIdade := CTOD(oCadastro:nasc)
    //? "Você tem ", INT((date() - oCadastro:nasc) / 365), "anos"

RETURN

METHOD Show()

    ? "Seu nome é:   ", oCadastro:nome, oCadastro:sobreNome
    ? "Seu signo é:  ", oCadastro:signo
    ? "Sua altura é: ", oCadastro:altura, "m"
    ? "Seu peso é:   ", oCadastro:peso, "kg" 
    ? "Nasceu em:    ", oCadastro:nasc 
    ? "Você tem ", INT((date() - oCadastro:nasc) / 365), "anos"

RETURN

    /*Nome, Sobrenome, Data de Nascimento, Signo, Idade, Altura, Peso
    - Criar o método de criação "New"
    - Criar um programa que usa esta classe e preenche os dados
    - Apresentar estes dados em tela

    - Alterar o programa para solicitar os dados
    - Organizar a classe para receber os dados
    - Criar um método para apresentar os dados em tela
    - Refatorar seu programa para usar os novos métodos
    - Entregar isto na segunda-feira (22 de abrirl)*/