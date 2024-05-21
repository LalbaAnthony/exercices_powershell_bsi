# Script multiplicationTable.ps1

# Demande à l'utilisateur d'entrer un nombre
$number = Read-Host "Entrez un nombre pour afficher sa table de multiplication"

# Vérifie que l'entrée de l'utilisateur est un nombre entier
if ($number -match '^\d+$') {
    # Convertir l'entrée en nombre entier
    $number = [int]$number

    # Afficher la table de multiplication de 1 à 10
    Write-Output "Table de multiplication de $number :"
    for ($i = 1; $i -le 10; $i++) {
        $result = $number * $i
        Write-Output "$number X $i = $result"
    }
} else {
    Write-Output "Veuillez entrer un nombre entier."
}
