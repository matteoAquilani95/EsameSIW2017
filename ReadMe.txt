Progetto realizzato per l'esame Giugno 2017 di Sistemi Informativi su Web

Tema: Gallleria D'arte

CASI D'USO:

UC1 registrazione utente
tramite una form un utente può registrarsi con username, email e password

UC2 login utente
tramite una form un utente può autenticarsi utilizzando email e password inserite nella registrazione

UC3 mostra lista artisti
tramite un service possiamo mostrare all'utente o amministratore i vari artisti che 
sono memorizzati nel database del sito

UC4 aggiungi artista
tramite una form un amministratore può inserire un artista 
utilizzando nome, cognome, nazionalità, data di nascita, data di morte (opzionale inserire l'immagine dell'artista
formato URL)

UC5 modifica artista
tramite una form simile al caso d'uso dell'inserimento dell'artista, è possibile modificare un artista
e aggiornarlo nel database del sito

UC6 rimuovi artista

UC7 mostra artista
vengono mostrati tutti i dati riferiti a un artista selezionato durante la navigazione sul sito 



Malfunzionamenti -> 
1. quando viene fatto modifica artista, mi rida un formato delle date di nascita
   e morte che poi non riesce a validare, quindi bisogna modificare il trattino
    con una "/"

N.B. abbiamo supposto che gli utenti devono registrarsi obbligatoriamente
	per entrare nel sito

Sviluppatori:
- Matteo Aquilani (matr. 487526)
- Daniela Bisciotti (matr. 471368)