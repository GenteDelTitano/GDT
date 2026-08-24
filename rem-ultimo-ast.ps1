# NB: Eseguire da: c:\Users\Luciano\Desktop\Soggetti Comunita\GDT\
# 1. Definizione dei percorsi con i caratteri jolly
$paths = @(
    "content\eventi-*\index.html",
    "content\incontri-direttivo-*\index.html"
)

# Stringa esatta da cercare ed eliminare
$target = '<div class="separator">✦ ✦ ✦</div>'

# 2. Ciclo attraverso tutti i file che corrispondono ai pattern
Get-Item $paths -ErrorAction SilentlyContinue | ForEach-Object {
    $filePath = $_.FullName
    $content = Get-Content -Path $filePath -Raw -Encoding UTF8

    # Costruiamo la RegEx per trovare solo l'ULTIMA occorrenza del target
    # (?s) abilita la modalità multilinea/dotall
    # .* serve ad agganciare tutto fino all'ultimo match
    $escapedTarget = [regex]::Escape($target)
    $pattern = "(?s)^(.*)$escapedTarget"

    # Se la stringa è presente nel file, procediamo
    if ($content -match $escapedTarget) {
        # Sostituiamo l'ultima occorrenza mantenendo tutto ciò che la precedeva ($1)
        $newContent = $content -replace $pattern, '$1'
        
        # Salviamo il file sovrascrivendolo
        Set-Content -Path $filePath -Value $newContent -Encoding UTF8 -NoNewline
        
        Write-Host "Modificato: $($_.FullName)" -ForegroundColor Green
    } else {
        Write-Host "Nessun elemento trovato in: $($_.FullName)" -ForegroundColor Yellow
    }
}
