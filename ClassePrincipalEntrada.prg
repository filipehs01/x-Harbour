#include "hbclass.ch"

CLASS cCadastro

    DATA nome //:= SPACE(30)
    DATA sobreNome //:= SPACE(30)
    DATA nasc //:= date()
    DATA idade
    DATA signo //:= SPACE(15)
    DATA altura //:= SPACE(4)
    DATA peso //:= SPACE(6)

    METHOD cNome() 
    METHOD pShow()

ENDCLASS

METHOD cNome() CLASS cCadastro

    ACCEPT "Digite seu nome: " TO ::nome
    ACCEPT "Digite seu sobrenome: " TO ::sobreNome
    ACCEPT "Qual é o seu signo? " TO ::signo
    ACCEPT "Qual é a sua altura? " TO ::altura
    ACCEPT "Qual é o seu peso? " TO ::peso
    ACCEPT "Informe sua data de nascimento: " TO ::nasc
    
    ::nasc := CTOD(::nasc)
    
RETURN Self

METHOD pShow()

    ? "Seu nome é:   ", ::nome, ::sobreNome
    ? "Seu signo é:  ", ::signo
    ? "Sua altura é: ", ::altura, "m"
    ? "Seu peso é:   ", ::peso, "kg" 
    ? "Nasceu em:    ", ::nasc 
    ? "Você tem ", ::idade:= INT((date() - ::nasc) / 365), "anos"

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