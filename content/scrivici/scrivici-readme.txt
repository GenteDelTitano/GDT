Scrivici - readme

copiare il file: 
	scivimi-emailjs.html su scrivimi.html
oppure:
	scrivimi-web3forms.html su scrivimi.html
oppure:
	scrivimi-formsubmit.html su scrivimi.html

1) Opzione 1, il più affidabile, limite 200 messaggi.
EmailJS
https://dashboard.emailjs.com/sign-in
gentedeltitano@libero.it
Rimini1901.

2) Opzione 2, riserva, profilo base, free, layout ricezione brutto.
Web3Forms
https://app.web3forms.com/onboarding/setup?key=eb8e48b3-fa82-41d2-bb69-05ba856db334

3) Opzione 3, ultima scelta, attenzione ! Arrivano in spam.
ForumSubmit
https://formsubmit.co/d9fc4d9398743ce1537157f8b04fce97

https://gentedelittiano.github.io/GDT/?page=scrivici

Utility
Online REST & SOAP API Testing Tool
https://reqbin.com/



<!-- Contatore visite su Firebase -->
<script>
(function() {
    const DB_URL = "https://gente-del-titano-default-rtdb.europe-west1.firebasedatabase.app";
    
    fetch(DB_URL + '/visite/scrivici.json')
        .then(function(res) { return res.json(); })
        .then(function(valoreAttuale) {
            const nuovoValore = (valoreAttuale || 0) + 1;
            fetch(DB_URL + '/visite/scrivici.json', {
                method: 'PUT',
                body: JSON.stringify(nuovoValore)
            });
        })
        .catch(function(e) { console.warn("Firebase non raggiungibile"); });
})();
</script>

'
Gestione su GitHub
https://github.com/GenteDeLTitano/GDT


# Passo 1: Inizializza il repository
powershell
cd "C:\Users\Luciano\Desktop\Soggetti Comunita\GDT"

# Inizializza un nuovo repository Git
git init

# Passo 2: Aggiungi tutti i file
powershell

# Aggiungi tutti i file e le cartelle (tranne .git)
git add .

# Verifica cosa è stato aggiunto
git status

# Passo 3: Crea il primo commit
powershell
git commit -m "Primo commit: ripristino del sito da dump"

# Passo 4: Collega al repository remoto
powershell
git remote add origin https://github.com/GenteDeLTitano/GDT.git

# Passo 5: Carica su GitHub
powershell
git push -u origin main

# 🔧 Se git add . non aggiunge nulla
# A volte Git ignora i file se non ci sono modifiche. Prova:

powershell
# Forza l'aggiunta di tutti i file
git add --all

# Oppure aggiungi manualmente i file specifici
git add index.html
git add css/
git add immagini/
git add js/
git add content/

# 📝 Se il push fallisce
# Potresti dover fare prima un pull (anche se il repository è vuoto, a volte serve):

powershell
# Se il repository remoto non è vuoto, fai un pull
git pull origin main --allow-unrelated-histories

# Poi fai il push
git push -u origin main

# 🎯 Verifica finale
# Dopo il push, controlla su GitHub che i file siano stati caricati:

https://github.com/GenteDeLTitano/GDT

Poi configura GitHub Pages:

Settings → Pages
Branch: main
Folder: / (root)
Clicca su Save

