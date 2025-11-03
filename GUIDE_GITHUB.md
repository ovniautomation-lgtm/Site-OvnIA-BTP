# Guide pour mettre le projet sur GitHub

## Prérequis

1. **Installer Git** (si pas déjà installé) :
   - Télécharger depuis : https://git-scm.com/download/win
   - Installer en suivant les instructions
   - Redémarrer le terminal après l'installation

2. **Créer un compte GitHub** (si pas déjà fait) :
   - Aller sur : https://github.com
   - Créer un compte gratuit

## Étapes pour mettre le projet sur GitHub

### 1. Ouvrir PowerShell/Terminal dans le dossier du projet

```powershell
cd "C:\Users\minim\Downloads\ovnia-main (1)\ovnia-main"
```

### 2. Initialiser Git (si pas déjà fait)

```powershell
git init
```

### 3. Vérifier les fichiers à commiter

```powershell
git status
```

### 4. Ajouter tous les fichiers (sauf ceux dans .gitignore)

```powershell
git add .
```

### 5. Créer le premier commit

```powershell
git commit -m "Initial commit: OvnIA - Assistant vocal IA pour service client"
```

### 6. Créer un nouveau repository sur GitHub

1. Aller sur https://github.com
2. Cliquer sur le bouton **"+"** en haut à droite
3. Sélectionner **"New repository"**
4. Remplir :
   - **Repository name** : `ovnia` (ou le nom que vous voulez)
   - **Description** : "Assistant vocal IA pour automatiser le service client - Restaurant, Salon, Garage"
   - Choisir **Public** ou **Private**
   - **NE PAS** cocher "Initialize this repository with a README" (on a déjà un README)
5. Cliquer sur **"Create repository"**

### 7. Connecter votre projet local à GitHub

GitHub vous donnera des commandes à exécuter. Utilisez celles qui commencent par "push an existing repository" :

```powershell
# Remplacer USERNAME et REPO_NAME par vos valeurs
git remote add origin https://github.com/USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

**Exemple concret** :
```powershell
git remote add origin https://github.com/votre-username/ovnia.git
git branch -M main
git push -u origin main
```

### 8. Authentification GitHub

Si GitHub vous demande de vous authentifier :
- Utilisez un **Personal Access Token** (PAT) au lieu du mot de passe
- Pour créer un PAT : GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic) → Generate new token
- Donner les permissions : `repo` (toutes les permissions repo)
- Copier le token et l'utiliser comme mot de passe lors du `git push`

## ⚠️ Important : Fichiers sensibles

**NE COMMITTEZ JAMAIS** :
- Clés API dans `src/config/retell.ts`
- Tokens d'accès
- Mots de passe

Le fichier `src/config/retell.ts` contient des clés API. **Créez un fichier `.env`** pour les variables d'environnement :

1. Créer un fichier `.env` à la racine :
```
VITE_RETELL_API_KEY=key_be7081d5e877f6c714d9cb403dd9
VITE_RETELL_AGENT_RESTAURANT=agent_36a44deffdf4a863d6e90f23aa
VITE_RETELL_AGENT_SALON=agent_b463aacee5d6c74e51c15ceb70
VITE_RETELL_AGENT_GARAGE=agent_b541bb6a23fc549f65b3db6cc4
```

2. Le fichier `.env` est déjà dans `.gitignore`, donc il ne sera pas commité

3. Créer un fichier `.env.example` avec des valeurs de placeholder :
```
VITE_RETELL_API_KEY=your_api_key_here
VITE_RETELL_AGENT_RESTAURANT=your_agent_id_here
VITE_RETELL_AGENT_SALON=your_agent_id_here
VITE_RETELL_AGENT_GARAGE=your_agent_id_here
```

4. Commit `.env.example` (mais PAS `.env`)

## Commandes utiles pour la suite

### Voir l'état des fichiers
```powershell
git status
```

### Ajouter des fichiers modifiés
```powershell
git add .
```

### Créer un commit
```powershell
git commit -m "Description de vos modifications"
```

### Envoyer sur GitHub
```powershell
git push
```

### Récupérer les changements depuis GitHub
```powershell
git pull
```

## Alternative : Utiliser GitHub Desktop

Si vous préférez une interface graphique :
1. Télécharger GitHub Desktop : https://desktop.github.com
2. Se connecter avec votre compte GitHub
3. File → Add Local Repository → Sélectionner le dossier `ovnia-main`
4. Cliquer sur "Publish repository" pour créer le repo sur GitHub

## Prochaines étapes recommandées

1. ✅ Créer un fichier `.env.example` avec les placeholders
2. ✅ Mettre à jour le README.md avec la description du projet
3. ✅ Ajouter des instructions d'installation dans le README
4. ✅ Créer des issues GitHub pour suivre les tâches
5. ✅ Ajouter une license (MIT, Apache, etc.)

