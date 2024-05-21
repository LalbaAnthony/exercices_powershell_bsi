# Script factorial.ps1

# Demande à l'utilisateur d'entrer un nombre
$number = Read-Host "Entrez un nombre pour calculer son factoriel"

# Vérifie que l'entrée de l'utilisateur est un nombre entier positif
if ($number -match '^\d+$' -and [int]$number -ge 0) {
    # Convertir l'entrée en nombre entier
    $number = [int]$number

    # Fonction pour calculer le factoriel d'un nombre
    function Get-Factorial {
        param (
            [int]$n
        )
        if ($n -le 1) {
            return 1
        } else {
            return $n * (Get-Factorial -n ($n - 1))
        }
    }

    # Calculer le factoriel
    $factorial = Get-Factorial -n $number

    # Afficher le résultat
    Write-Output "Factoriel de $number"
    Write-Output "$number! = $factorial"
} else {
    Write-Output "Veuillez entrer un nombre entier positif."
}
