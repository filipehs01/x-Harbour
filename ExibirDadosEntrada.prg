Function Main()

    Local pPrint

    SET DATE BRIT
    SET CENT ON
    
    hb_cdpSelect("UTF8")
    
    cls
    
    pPrint := cCadastro()
    pPrint :cNome()
    
    /*
    @01, 01 SAY "Digite seu nome: " GET oCadastro:nome valid !Empty(oCadastro:nome)
    @02, 01 SAY "Digite seu sobrenome: " GET oCadastro:sobreNome valid !Empty(oCadastro:sobreNome)
    @03, 01 SAY "Informe sua data de nascimento: " GET oCadastro:nasc 
    @04, 01 SAY "Qual é o seu signo? " GET oCadastro:signo valid !Empty(oCadastro:signo)
    @05, 01 SAY "Qual é a sua altura? " GET oCadastro:altura //PICTURE "@E 0.00" valid !Empty(oCadastro:altura)
    @06, 01 SAY "Qual é o seu peso? " GET oCadastro:peso //PICTURE "@E 00.00" valid !Empty(oCadastro:peso)
    
    READ
    */

    //não está calculando a idade
    cls
    
    pPrint:pShow()
    //oIdade:= cCadastro():Idade()
    
    //? WAPI_GETCURRENTPROCESSID()
    Inkey(0)
    
    Return