#include "hbclass.ch"

CLASS Cadastro

    DATA nome
    DATA sobreNome
    DATA nasc
    DATA signo
    DATA altura
    DATA peso

METHOD New(nome, sobreNome, signo, altura, peso)
METHOD Idade()

ENDCLASS

METHOD new(nome, sobreNome, signo, altura, peso)

::nome := nome
::sobreNome := sobreNome
::signo := signo
::altura := altura
::peso  := peso

RETURN Self

METHOD Idade()

? "Idade:", INT ((date() -::nasc) / 365), "anos"

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