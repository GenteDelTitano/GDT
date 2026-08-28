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

