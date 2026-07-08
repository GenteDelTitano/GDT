// Funzione per caricare il contenuto di una pagina
function loadPage(page) {
    // Mostra un indicatore di caricamento (opzionale)
    const container = document.getElementById('content-container');
    container.innerHTML = '<p style="text-align:center; padding: 50px;">⏳ Caricamento in corso...</p>';
    
    // Rimuovi la classe active da tutti i link del menu
    document.querySelectorAll('nav ul li a').forEach(link => {
        link.classList.remove('active');
    });
    
    // Aggiungi la classe active al link cliccato
    const activeLink = document.querySelector(`nav ul li a[data-page="${page}"]`);
    if (activeLink) {
        activeLink.classList.add('active');
    }
    
    // Carica il contenuto dal file HTML
    fetch(page + '.html')
        .then(response => {
            if (!response.ok) {
                throw new Error('Pagina non trovata');
            }
            return response.text();
        })
        .then(html => {
            container.innerHTML = html;
            // Aggiorna il titolo della pagina
            document.title = 'Gente del Titano - ' + page.charAt(0).toUpperCase() + page.slice(1);
        })
        .catch(error => {
            container.innerHTML = `
                <h1>😕 Pagina non trovata</h1>
                <p>Impossibile caricare il contenuto. Riprova più tardi.</p>
                <p style="color: #888; font-size: 0.9rem;">Errore: ${error.message}</p>
            `;
        });
}

// Carica la pagina iniziale quando il documento è pronto
document.addEventListener('DOMContentLoaded', function() {
    // Controlla se c'è una pagina nella URL (es. ?page=storia)
    const urlParams = new URLSearchParams(window.location.search);
    const page = urlParams.get('page') || 'storia';
    loadPage(page);
});