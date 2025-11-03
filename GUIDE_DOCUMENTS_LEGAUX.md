# 📋 Guide : Comment remplir tes documents légaux

## 🎯 Où trouver ces documents ?

Les documents sont dans **3 modals** accessibles depuis le footer du site :
- **Mentions légales** (clic sur "Mentions légales")
- **CGV** (clic sur "CGV")  
- **Confidentialité** (clic sur "Confidentialité")

Le fichier à modifier : `ovnia-main/src/components/LegalModal.tsx`

---

## ✏️ 1. MENTIONS LÉGALES - Informations à compléter

### Informations obligatoires à remplir :

```typescript
// Ligne ~18-27 dans LegalModal.tsx

<p><strong>Raison sociale :</strong> OvnIA</p>
<p><strong>Forme juridique :</strong> Auto-entrepreneur / SARL / SAS / etc.</p>
<p><strong>Capital social :</strong> [Si société : ex: 1000€]</p>
<p><strong>Siège social :</strong> 123 rue Exemple, 75000 Paris</p>
<p><strong>SIRET :</strong> 123 456 789 00012</p>
<p><strong>TVA intracommunautaire :</strong> FR12345678901 [ou "Non assujetti" si auto-entrepreneur]</p>
<p><strong>Directeur de la publication :</strong> Amine [TON NOM COMPLET]</p>
<p><strong>Contact :</strong> contact@ovnia.fr [TON VRAI EMAIL]</p>
```

### Où trouver ces informations ?

| Information | Où la trouver ? |
|------------|----------------|
| **SIRET** | Sur ton inscription INPI / Urssaf / Avis de situation SIRENE |
| **Forme juridique** | Auto-entrepreneur, EURL, SARL, SAS... (paperasse d'inscription) |
| **Capital social** | Statuts de la société (si société) |
| **TVA intracom** | Avis d'immatriculation des impôts (si TVA) |
| **Adresse** | Ton adresse de domiciliation d'entreprise |

### Hébergeur du site :

```typescript
// Ligne ~32-36

<p><strong>Hébergeur :</strong> [Ton hébergeur : ex: OVH, Vercel, Hostinger, etc.]</p>
<p><strong>Adresse :</strong> [Adresse de l'hébergeur - Google "adresse légale [nom hébergeur]"]</p>
<p><strong>Téléphone :</strong> [Numéro support hébergeur]</p>
```

**Exemples d'hébergeurs courants :**
- **Vercel** : Vercel Inc., 340 S Lemon Ave #4133, Walnut, CA 91789, USA
- **OVH** : OVH SAS, 2 rue Kellermann, 59100 Roubaix, France
- **Hostinger** : Hostinger International Ltd, 61 Lordou Vironos Street, 6023 Larnaca, Cyprus

---

## 📜 2. CGV - Conditions Générales de Vente

### À personnaliser :

#### **Prix et paiement** (ligne ~92-104)
```typescript
<p><strong>Modalités de paiement :</strong> 
  - Virement bancaire
  - Carte bancaire
  - Prélèvement SEPA
  [CHOISIS CE QUE TU ACCEPTES]
</p>

<p><strong>Délai de paiement :</strong> 
  - Paiement comptant (immédiat)
  - 30 jours fin de mois
  - Échéancier sur 3/6/12 mois
  [CHOISIS]
</p>
```

#### **Tes garanties** (ligne ~115-120)
Tu peux ajouter tes propres garanties :
- Garantie satisfait ou remboursé 30 jours
- Disponibilité du service 99.9%
- Support client 7j/7
- Etc.

---

## 🔒 3. POLITIQUE DE CONFIDENTIALITÉ (RGPD)

### ⚠️ Points critiques à vérifier :

#### **Email de contact RGPD** (ligne ~187)
```typescript
<p><strong>Pour exercer vos droits :</strong> contact@ovnia.fr</p>
```
👉 **Remplace par ton VRAI email** où les gens peuvent demander suppression de données.

#### **Durée de conservation** (ligne ~167-173)
Les durées proposées sont standard, mais tu peux les ajuster selon ton activité.

#### **Partenaires** (ligne ~178-183)
```typescript
<li>Prestataires techniques (hébergement, emailing)</li>
<li>Partenaires technologiques (Retell AI, Cal.com, N8N)</li>
```
👉 Si tu utilises d'autres outils (Google Analytics, Meta Pixel, etc.), **ajoute-les ici**.

---

## 🚀 Comment modifier le fichier ?

### Étape 1 : Ouvre le fichier
```bash
ovnia-main/src/components/LegalModal.tsx
```

### Étape 2 : Cherche les balises `[À compléter]`
Utilise Ctrl+F (ou Cmd+F) pour chercher : `[À compléter]`

### Étape 3 : Remplace par tes vraies infos
```typescript
// AVANT
<p><strong>SIRET :</strong> [Ton numéro SIRET]</p>

// APRÈS
<p><strong>SIRET :</strong> 123 456 789 00012</p>
```

### Étape 4 : Sauvegarde
Le site se mettra à jour automatiquement.

---

## ⚖️ Obligations légales

### 🇫🇷 En France, c'est **obligatoire** d'avoir :

✅ **Mentions légales** (pour tous les sites)
- Identité de l'éditeur (nom, SIRET, adresse)
- Coordonnées (email, téléphone)
- Hébergeur du site

✅ **CGV** (si tu vends des services/produits)
- Prix
- Modalités de paiement
- Droit de rétractation (14 jours)
- Garanties

✅ **Politique de confidentialité** (RGPD - si tu collectes des données)
- Quelles données tu collectes
- Pourquoi
- Combien de temps
- Droits des utilisateurs (accès, suppression, etc.)

### ⚠️ Sanctions si tu ne les as pas :
- Amende jusqu'à **75 000€** (mentions légales)
- Amende jusqu'à **20M€** ou 4% du CA (RGPD)

---

## 🆘 Besoin d'aide ?

### Option 1 : Gratuit
Utilise les **générateurs en ligne** :
- [CGU.fr](https://www.cgu.fr) - Générateur gratuit
- [CNIL - Modèle RGPD](https://www.cnil.fr/fr/modele/rgpd) - Politique de confidentialité

### Option 2 : Payant mais complet
- **Avocat spécialisé** (200-500€) - recommandé si gros CA
- **Captain Contrat** (en ligne, ~100-200€)
- **LegalPlace** (en ligne, ~100-200€)

---

## ✅ Checklist finale

Avant de mettre le site en ligne, vérifie :

- [ ] SIRET rempli
- [ ] Adresse complète remplie
- [ ] Email de contact valide
- [ ] Hébergeur mentionné
- [ ] TVA (si applicable)
- [ ] Modalités de paiement définies
- [ ] Email RGPD pour exercer les droits
- [ ] Durées de conservation des données
- [ ] Liste des partenaires/sous-traitants

---

## 💡 Conseil pro

**Ne copie pas bêtement des CGV d'autres sites** : les textes sont protégés par le droit d'auteur.

Utilise les templates que je t'ai fournis (ils sont génériques) et adapte-les à TON activité réelle.

---

**Dernière mise à jour :** Janvier 2025  
**Créé pour OvnIA** 🛸

