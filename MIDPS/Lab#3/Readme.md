## **Procesul de efectuare a laboratorului nr.3 la disciplina MIDPS**

IDE: Visual Studio Community 2015
Limbajul: C#

=============================================================================================================================================
 
 - Initial am creat design-ul calculatorului, am aranjat butoanele, textbox-ul si le-am atribuit proprietatile dorite in fereastra de proprietati
 - Prima problema intilnita la dezvoltarea programului a fost divizarea programului in doua module
 - Am creat o clasa noua in care sa pastrez partea functionala a programului, dar am dat de problema ca clasa nu are acces catre control-uri, adica catre obiectele de pe forma
 - Dupa citeva incercari si multa cautare a solutiei pe internet, unind bucati din mai multe solutii am obtinut un rezultat.
 - Am facut obiectele de pe forma publice, dupa care in clasa ce va contine partea functionala am creat un pointer de tipul formei din partea GUI
 - La initializarea GUI am atribuit pointerului din clasa functionala adresa formei create, ceea ce a asigurat acces complet catre forma din clasa cu partea functionala
 - Apoi am creat functii pentru fiecare buton in parte si fiecare operatie care o va executa calculatorul
 - Prima variabila sa citeste la apasarea uneia dintre tastele cu operatii matematice (+, -, *, /, x^y) iar a 2-a variabila se citeste la apasarea butonului "=" unde se executa si operatia matematica
 - Operatiile matematice sunt alese intr-un switch care controleaza o variabila string 
 - Am implementat butonul Backspace pentru a sterge o singura cifra, cit si butonul "C" pentru a sterge tot numarul introdus
 - Am limitat sirul de caractere afisat in textbox la 9 caractere, adica teoretic am un calculator 9-digit
 - Am testat calculatorul in mai multe situatii (ex.:impartirea la 0)
 - Am reparat mici bug-uri, erori cum ar fi punctul pentru numere zecimale putea fi apasat de mai multe ori (0...01 sau 0.0.1)
 - In final am obtinut un calculator destul de simplu, light, ce poate fi folosit pentru a efectua calcule simple, chiar poate fi inlocuire calculatorului standard Windows

=============================================================================================================================================

 **Concluzie**: Efectuarea acestui program nu a fost un proces complicat deoarece precedent am studiat atit limbajul C# cit si mediul de dezvoltare integrat Visual Studio.
                Logica crearii unui calculator intr-un limbaj de programare de nivel innalt este de fapt destul de simpla si am mai avut de a face cu astfel de experienta in procesul de studii.