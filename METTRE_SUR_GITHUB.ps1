# Script pour mettre le projet sur GitHub
# Exécutez ce script dans PowerShell

Write-Host "=== PREPARATION DU PROJET POUR GITHUB ===" -ForegroundColor Cyan
Write-Host ""

# Vérifier si Git est installé
try {
    $gitVersion = git --version 2>$null
    Write-Host "✅ Git détecté: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git n'est pas installé !" -ForegroundColor Red
    Write-Host ""
    Write-Host "📥 INSTALLEZ GIT D'ABORD:" -ForegroundColor Yellow
    Write-Host "1. Allez sur: https://git-scm.com/download/win"
    Write-Host "2. Téléchargez et installez Git"
    Write-Host "3. REDEMARREZ PowerShell après l'installation"
    Write-Host ""
    Write-Host "OU utilisez GitHub Desktop (plus simple):"
    Write-Host "https://desktop.github.com"
    exit 1
}

# Aller dans le dossier du projet
$projectPath = $PSScriptRoot
Set-Location $projectPath
Write-Host "📁 Dossier: $projectPath" -ForegroundColor Cyan
Write-Host ""

# Initialiser Git si pas déjà fait
if (-not (Test-Path .git)) {
    Write-Host "🔄 Initialisation de Git..." -ForegroundColor Yellow
    git init
    Write-Host "✅ Git initialisé" -ForegroundColor Green
} else {
    Write-Host "✅ Git déjà initialisé" -ForegroundColor Green
}

Write-Host ""
Write-Host "📝 Ajout des fichiers..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "💾 Création du commit initial..." -ForegroundColor Yellow
git commit -m "Initial commit: OvnIA - Assistant vocal IA"

Write-Host ""
Write-Host "✅ COMMIT RÉUSSI !" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "ÉTAPES SUIVANTES:" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Créez un nouveau repository sur GitHub:" -ForegroundColor White
Write-Host "   - Allez sur: https://github.com/new" -ForegroundColor Gray
Write-Host "   - Nom: 'ovnia' (ou autre nom)" -ForegroundColor Gray
Write-Host "   - Public ou Private (votre choix)" -ForegroundColor Gray
Write-Host "   - NE PAS cocher 'Initialize with README'" -ForegroundColor Red
Write-Host "   - Cliquez 'Create repository'" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Connectez votre projet local à GitHub:" -ForegroundColor White
Write-Host "   (Remplacez VOTRE_USERNAME par votre nom GitHub)" -ForegroundColor Gray
Write-Host ""
Write-Host "   git remote add origin https://github.com/VOTRE_USERNAME/ovnia.git" -ForegroundColor Cyan
Write-Host "   git branch -M main" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Si GitHub demande un mot de passe:" -ForegroundColor Yellow
Write-Host "   - Utilisez un Personal Access Token (PAT)" -ForegroundColor Gray
Write-Host "   - GitHub → Settings → Developer settings" -ForegroundColor Gray
Write-Host "   → Personal access tokens → Generate new token" -ForegroundColor Gray
Write-Host "   - Permissions: cocher 'repo'" -ForegroundColor Gray
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "ALTERNATIVE SIMPLE: GitHub Desktop" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "1. Télécharger: https://desktop.github.com" -ForegroundColor White
Write-Host "2. File → Add Local Repository" -ForegroundColor White
Write-Host "3. Sélectionner ce dossier" -ForegroundColor White
Write-Host "4. Publish repository" -ForegroundColor White
Write-Host ""



