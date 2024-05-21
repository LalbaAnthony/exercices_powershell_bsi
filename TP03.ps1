# Script complet avec commentaires

# 1. Créer une variable en lui affectant la cmdlet permettant d’afficher le groupe local des administrateurs
# Cette commande récupère les membres du groupe "Administrators" et les stocke dans la variable $adminGroup
$adminGroup = Get-LocalGroupMember -Group "Administrators"

# Afficher les membres du groupe des administrateurs (optionnel)
Write-Output "Membres du groupe Administrators :"
$adminGroup | ForEach-Object { Write-Output $_.Name }

# 2. Créer une variable de type tableau contenant les 5 noms de sportifs
# Cette variable $sportifs contient un tableau de chaînes de caractères représentant les noms de sportifs
$sportifs = @("Lionel Messi", "Serena Williams", "Michael Phelps", "Usain Bolt", "Roger Federer")

# Afficher les noms des sportifs (optionnel)
Write-Output "Noms des sportifs :"
$sportifs | ForEach-Object { Write-Output $_ }

# 3. Afficher tous les services de votre PC qui ont un statut « arrêté »
# Cette commande récupère les services avec le statut "Stopped" et les affiche
Write-Output "Services arrêtés :"
Get-Service | Where-Object { $_.Status -eq 'Stopped' } | ForEach-Object { Write-Output $_.Name }

# 4. Créer un script nommé « checkUser.ps1 » qui demande à l’utilisateur d’entrer un nom d’utilisateur et vérifie son existence
# Demande à l'utilisateur d'entrer un nom d'utilisateur
$username = Read-Host "Entrez un nom d'utilisateur"

# Vérifie si l'utilisateur existe sur le PC
$userExists = Get-LocalUser | Where-Object { $_.Name -eq $username }

# Affiche un message selon l'existence ou non de l'utilisateur
if ($userExists) {
    Write-Output "L'utilisateur existe"
} else {
    Write-Output "Cet utilisateur n'existe pas"
}
