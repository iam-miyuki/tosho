# 📚 Tosho – Application de gestion de prêt de livres

---

## 1. 💡 Présentation du projet

### 🧭 Contexte  
Le projet **Tosho** — qui signifie *« bibliothèque »* ou *« livre »* en japonais — est une application web développée pour moderniser **la gestion des prêts de livres pour une petite bibliothéque*.  
**Tosho** est le projet que j’ai développé pour appliquer concrètement les compétences acquises lors de ma formation DWWM.
---

## 2. 🎯 Objectifs

- ✅ **Faciliter** la gestion des prêts et retours de livres.  
- 📊 **Simplifier** la tenue de l’inventaire de la bibliothèque.  
- 👥 **Donner autonomie** aux utilisateurs via une interface claire et intuitive.  
- 🔐 **Sécuriser** l’accès selon les rôles (Admin / Bibliothécaire).  

---

## 3. 👥 Utilisateurs cibles

### 👑 **Administrateurs (parents élus)**
- Gèrent les **familles adhérentes**, les **bibliothécaires** et le **catalogue des livres**.  
- Peuvent planifier les **sessions d’inventaire**, consulter leur avancement, et **mettre à jour les statuts** des livres signalés (perdu, abîmé, mal rangé, etc.).  

### 📘 **Bibliothécaires (parents bénévoles)**
- Enregistrent les **prêts** et **retours**.  
- Participent à l’**inventaire** et signalent les anomalies.  

---

## 4. ⚙️ Fonctionnalités principales

### 📦 Gestion des prêts
- 📝 Enregistrement d’un **prêt** (livre, date, famille).  
- ✅ Enregistrement du **retour** du livre.  

### 📋 Inventaire
- 🔍 Saisie du **code du livre** pour vérifier sa présence.  
- ⚠️ Possibilité de **signaler une anomalie** : livre non trouvé, abîmé, etc.  

### 🛠️ Gestion des livres *(Admin uniquement)*
- ➕ Ajouter un livre  
- 👁️ Consulter les détails (titre, auteur, statut)  
- ✏️ Modifier les informations  
- 🗑️ Supprimer un livre obsolète  

### 🏠 Gestion des familles *(Admin uniquement)*
- ➕ Ajouter une famille adhérente  
- 👁️ Consulter ses informations  
- ✏️ Modifier les données  
- 🗑️ Supprimer un adhérent  

### 👥 Gestion des bibliothécaires *(Admin uniquement)*
- ➕ Créer un compte bibliothécaire  
- 👁️ Voir la liste des comptes  
- ✏️ Modifier ou désactiver un compte  
- 🗑️ Supprimer un compte inactif  

### 📅 Gestion des sessions d’inventaire *(Admin uniquement)*
- 🗓️ Programmer une session  
- 📊 Suivre l’avancement (livres vérifiés/restants)  
- 🔄 Mettre à jour le statut des livres signalés  

---

## 5. 🔐 Connexion & Sécurité

- 🔑 Page de connexion (Admin / Bibliothécaire)  
- 🔁 Mot de passe oublié et réinitialisation  
- 🔒 Changement ou initialisation de mot de passe  
- 🔄 Passage possible entre l’interface Admin et Bibliothécaire (pour les parents élus)  

---

## 6. 🧱 Architecture technique

| Technologie | Usage |
|--------------|--------|
| **Symfony 6.4** | Back-end (framework PHP) |
| **Twig** | Templates front-end |
| **CSS / JavaScript** | Interface utilisateur |
| **MySQL** | Base de données |

**Tosho** est conçu pour être :
- 💻 **Simple d’utilisation** pour les utilisateurs non techniques  
- 📱 **Responsive**, utilisable sur mobile et desktop  

---


## 7. 🌱 Évolutions futures (V2)

- 🔍 Recherche interactive avec **AJAX** : affichage automatique des suggestions lors de la saisie (ex. recherche par nom sans appuyer sur "Chercher")  
- 📬 Envoi d’e-mails de rappel pour les retours en retard  
- 📌 Réservation des livres  
- 🌏 Interface multilingue (français / japonais)  
- 🗓️ Planning des bibliothécaires  

---


# 🚀 Documentation MEP (Mise en Production)

## 🧩 Prérequis

- Accès SSH au serveur distant  
- Docker et Docker Compose installés  
- Accès au dépôt GitHub du projet  
- Fichier `.env.prod` ou `.env.dev` configuré  

---

## ⚙️ Étapes de déploiement

1. **Se connecter au serveur via SSH**

   ````bash
   ssh username@adresse_ip
   ````

2. **Créer un répertoire pour le déploiement**
````bash
mkdir tosho && cd tosho
````

3. **Cloner le projet depuis GitHub**

```bash
git clone https://github.com/iam-miyuki/tosho.git .
```

4. **Copier le fichier d’environnement**

```bash
cp .env.prod .env
```
(ou utiliser ``.env.dev`` selon l’environnement choisi)

5. **Lancer le build et les conteneurs**
```bash
make prod
```
(ou ``make dev`` pour un environnement de développement — voir le fichier Makefile)

6. Restaurer la base de données

symfony console doctrine:database:create --if-not-exists
symfony console doctrine:migrations:migrate --no-interaction

(ou importer un dump SQL si disponible)

## 💡 Commandes utiles

- **Ouvrir un terminal dans le conteneur de l’application**
```bash
docker exec -it tosho-app-1 bash
```

- **Vider le cache**

```bash
php bin/console cache:clear
```

- **Mettre à jour la base de données**
```bash
symfony console doctrine:schema:update --force
```

- **Afficher les logs**
```bash
docker logs -f tosho-app-1
```





