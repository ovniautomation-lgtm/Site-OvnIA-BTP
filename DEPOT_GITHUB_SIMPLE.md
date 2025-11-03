# 📦 Comment déposer votre dossier sur GitHub - Guide Simple

## Méthode 1 : Avec GitHub Desktop (Le plus facile) ⭐

### Étape 1 : Installer GitHub Desktop
1. Télécharger : https://desktop.github.com
2. Installer l'application
3. Se connecter avec votre compte GitHub (créer un compte sur https://github.com si besoin)

### Étape 2 : Publier votre projet
1. Ouvrir GitHub Desktop
2. Menu : **File** → **Add Local Repository**
3. Cliquer sur **Choose...**
4. Sélectionner le dossier : `C:\Users\minim\Downloads\ovnia-main (1)\ovnia-main`
5. Cliquer sur **Add Repository**
6. En bas, cliquer sur **Publish repository**
7. Donner un nom : `ovnia` (ou autre)
8. Choisir Public ou Private
9. Cocher **"Keep this code private"** si vous voulez que ce soit privé
10. Cliquer sur **Publish Repository**

✅ **C'est tout !** Votre projet est maintenant sur GitHub.

---

## Méthode 2 : Avec Git en ligne de commande

### Étape 1 : Installer Git
1. Télécharger : https://git-scm.com/download/win
2. Installer (garder les options par défaut)
3. **Redémarrer PowerShell** après l'installation

### Étape 2 : Ouvrir PowerShell dans votre dossier
1. Ouvrir PowerShell
2. Taper :
```powershell
cd "C:\Users\minim\Downloads\ovnia-main (1)\ovnia-main"
```

### Étape 3 : Initialiser Git
```powershell
git init
git add .
git commit -m "Premier commit - Projet OvnIA"
```

### Étape 4 : Créer le repository sur GitHub
1. Aller sur https://github.com
2. Cliquer sur le **"+"** en haut à droite
3. Cliquer sur **"New repository"**
4. Remplir :
   - **Repository name** : `ovnia` (ou autre nom)
   - **Description** : "Assistant vocal IA pour service client"
   - Choisir **Public** ou **Private**
   - **⚠️ IMPORTANT** : NE PAS cocher "Initialize this repository with a README"
5. Cliquer sur **"Create repository"**

### Étape 5 : Connecter votre dossier à GitHub
GitHub va afficher des commandes. Utilisez celles-ci :

```powershell
git remote add origin https://github.com/VOTRE_USERNAME/ovnia.git
```

(Remplacez `VOTRE_USERNAME` par votre nom d'utilisateur GitHub)

```powershell
git branch -M main
git push -u origin main
```

### Si GitHub demande un mot de passe :
GitHub n'accepte plus les mots de passe. Utilisez un **Personal Access Token** :

1. Aller sur GitHub → **Settings** (votre profil en haut à droite)
2. **Developer settings** (en bas à gauche)
3. **Personal access tokens** → **Tokens (classic)**
4. **Generate new token (classic)**
5. Donner un nom : `ovnia-project`
6. Cocher la case **`repo`** (donne accès aux repositories)
7. Cliquer **Generate token**
8. **⚠️ COPIER LE TOKEN** (vous ne le reverrez plus !)
9. Utiliser ce token comme mot de passe lors du `git push`

---

## Méthode 3 : Drag & Drop sur GitHub (Sans Git)

### Cette méthode est pour les petits projets sans historique Git :

1. Créer un nouveau repository sur GitHub (sans README)
2. Aller dans l'onglet **Code**
3. Cliquer sur **"uploading an existing file"**
4. Glisser-déposer tous vos fichiers (sauf `node_modules` et `.env`)
5. Ajouter un message : "Initial upload"
6. Cliquer sur **"Commit changes"**

⚠️ **Note** : Cette méthode ne garde pas l'historique Git.

---

## ⚠️ AVANT DE PUBLIER : Sécurité des clés API

Le fichier `src/config/retell.ts` contient vos clés API. **Deux options** :

### Option A : Retirer les clés avant de publier
1. Ouvrir `src/config/retell.ts`
2. Remplacer les vraies clés par :
```typescript
API_KEY: 'YOUR_API_KEY_HERE',
AGENTS: {
  RESTAURANT: 'YOUR_AGENT_ID_HERE',
  SALON: 'YOUR_AGENT_ID_HERE',
  GARAGE: 'YOUR_AGENT_ID_HERE'
}
```

### Option B : Utiliser un fichier .env (recommandé)
Le fichier `.env` est déjà dans `.gitignore`, donc il ne sera pas publié.
- Gardez vos vraies clés dans `.env`
- Les fichiers de code peuvent avoir des placeholders

---

## 🎯 Résumé rapide

**Le plus simple** : Utilisez GitHub Desktop
1. Installer GitHub Desktop
2. File → Add Local Repository → Choisir votre dossier
3. Publish repository

**En 5 minutes c'est fait !** 🚀

---

## 📝 Après avoir publié

Votre projet sera accessible à :
`https://github.com/VOTRE_USERNAME/ovnia`

Vous pourrez :
- ✅ Partager le lien
- ✅ Collaborer avec d'autres
- ✅ Versionner vos modifications
- ✅ Déployer facilement (Vercel, Netlify, etc.)

