Function Main()

SET DATE BRIT
SET CENT ON

hb_cdpSelect("UTF8")

cls

oCadastro := Cadastro():new("Filipe", "Henrique", "Libra", "1.77m", "73.90 kg")
oCadastro:nasc := CTOD("14/10/1996")

? "Nome:      ", oCadastro:nome, oCadastro:sobreNome
? "Signo:     ", oCadastro:signo
? "Altura:    ", oCadastro:altura
? "Peso:      ", oCadastro:peso
? "Nascimento:", oCadastro:nasc

oCadastro:idade()

//? WAPI_GETCURRENTPROCESSID()
Inkey(0)