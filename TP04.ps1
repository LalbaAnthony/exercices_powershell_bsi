# Script createFiles.ps1

# Demande à l'utilisateur d'entrer le nombre de fichiers à créer
$numberOfFiles = Read-Host "Entrez le nombre de fichiers à créer"

# Vérifie que l'entrée de l'utilisateur est un nombre entier positif
if ($numberOfFiles -match '^\d+$' -and [int]$numberOfFiles -gt 0) {
    # Convertir l'entrée en nombre entier
    $numberOfFiles = [int]$numberOfFiles

    # Boucle pour créer le nombre de fichiers demandés
    for ($i = 1; $i -le $numberOfFiles; $i++) {
        # Nom du fichier
        $fileName = "file$i.txt"
        
        # Crée un fichier vide avec le nom spécifié
        New-Item -Path . -Name $fileName -ItemType "File" -Force

        # Affiche un message de confirmation pour chaque fichier créé
        Write-Output "Fichier $fileName créé."
    }
} else {
    Write-Output "Veuillez entrer un nombre entier positif."
}