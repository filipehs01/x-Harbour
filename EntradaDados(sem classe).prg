Procedure Main

    LOCAL nNome := SPACE(30)
    LOCAL sobreNome := SPACE(30)
    LOCAL dataNasc := date()
    LOCAL sSigno := SPACE(15)
    LOCAL nAltura := SPACE(4)
    LOCAL nPeso := SPACE(6)
    
    hb_cdpSelect("UTF8")
    
cls
        
    set date brit
    set cent on
    
@01, 01 SAY "Digite seu nome: " GET nNome valid !Empty(nNome)
@02, 01 SAY "Digite seu sobrenome: " GET sobreNome valid !Empty(sobreNome)
@03, 01 SAY "Informe sua data de nascimento: " GET dataNasc 
@04, 01 SAY "Qual é o seu signo? " GET sSigno valid !Empty(sSigno)
@05, 01 SAY "Qual é a sua altura? " GET nAltura //PICTURE "@E 0.00" valid !Empty(nAltura)
@06, 01 SAY "Qual é o seu peso? " GET nPeso //PICTURE "@E 00.00" valid !Empty(nPeso)

READ
    
    @07, 01 SAY ""
    ? "Seu nome é: ", + nNome
    ? "Seu sobrenome é: ", + sobreNome
    ? "Nasceu em: ", + dataNasc
    ? "Seu signo é: ", + sSigno
    ? "Sua altura é: ", + nAltura + "m"
    ? "Seu peso é: ", + nPeso + "kg"
    
        Inkey(0)
    
cls
    
Return
    
    /*Nome, Sobrenome, Data de Nascimento, Signo, Idade, Altura, Peso
    - Criar o método de criação "New"
    - Criar um programa que usa esta classe e preenche os dados
    - Apresentar estes dados em tela

    - Alterar o programa para solicitar os dados
    - Organizar a classe para receber os dados
    - Criar um método para apresentar os dados em tela
    - Refatorar seu programa para usar os novos métodos
    - Entregar isto na segunda-feira (22 de abrirl)*/