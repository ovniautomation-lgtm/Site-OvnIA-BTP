# Script PowerShell pour mettre le projet sur GitHub
# Exécuter avec: .\setup-github.ps1

Write-Host "🚀 Configuration Git pour GitHub" -ForegroundColor Cyan
Write-Host ""

# Vérifier si Git est installé
try {
    $gitVersion = git --version
    Write-Host "✅ Git installé: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git n'est pas installé!" -ForegroundColor Red
    Write-Host "Téléchargez Git depuis: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# Vérifier si déjà un repo Git
if (Test-Path .git) {
    Write-Host "⚠️ Un dépôt Git existe déjà" -ForegroundColor Yellow
    $continue = Read-Host "Voulez-vous continuer quand même? (o/n)"
    if ($continue -ne "o") {
        exit 0
    }
} else {
    Write-Host "📦 Initialisation du dépôt Git..." -ForegroundColor Cyan
    git init
    Write-Host "✅ Dépôt Git initialisé" -ForegroundColor Green
}

# Ajouter tous les fichiers
Write-Host ""
Write-Host "📝 Ajout des fichiers..." -ForegroundColor Cyan
git add .

# Vérifier l'état
Write-Host ""
Write-Host "📊 État du dépôt:" -ForegroundColor Cyan
git status

# Demander si on veut créer un commit
Write-Host ""
$createCommit = Read-Host "Voulez-vous créer le commit initial maintenant? (o/n)"
if ($createCommit -eq "o") {
    $commitMessage = Read-Host "Message de commit (laissez vide pour utiliser le message par défaut)"
    if ([string]::IsNullOrWhiteSpace($commitMessage)) {
        $commitMessage = "Initial commit: OvnIA - Assistant vocal IA pour service client"
    }
    git commit -m $commitMessage
    Write-Host "✅ Commit créé" -ForegroundColor Green
}

# Instructions pour GitHub
Write-Host ""
Write-Host "=" * 60 -ForegroundColor Cyan
Write-Host "📋 PROCHAINES ÉTAPES:" -ForegroundColor Yellow
Write-Host "=" * 60 -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Allez sur https://github.com et créez un nouveau repository" -ForegroundColor White
Write-Host "2. Ne cochez PAS 'Initialize with README' (on en a déjà un)" -ForegroundColor White
Write-Host "3. Copiez l'URL du repository (ex: https://github.com/USERNAME/REPO.git)" -ForegroundColor White
Write-Host ""
Write-Host "4. Ensuite, exécutez ces commandes:" -ForegroundColor Yellow
Write-Host ""
Write-Host '   git remote add origin https://github.com/VOTRE_USERNAME/VOTRE_REPO.git' -ForegroundColor Cyan
Write-Host '   git branch -M main' -ForegroundColor Cyan
Write-Host '   git push -u origin main' -ForegroundColor Cyan
Write-Host ""
Write-Host "⚠️  IMPORTANT: Remplacez les clés API dans src/config/retell.ts avant de pusher!" -ForegroundColor Red
Write-Host "   Ou créez un fichier .env (voir .env.example)" -ForegroundColor Yellow
Write-Host ""

