# Mini-projet-jenkins

## pipeline ci/cd
pipeline code

Dans ce projet, j'ai conteneurisé une application web statique existante et mis en place un pipeline de CI/CD sur jenkins (en utilisant le jenkinsfile) pour automatiser les étapes de construction, de test et de déploiement de l'application sur eazylabs. Ce rapport explique les étapes du pipeline que vous trouverez dans le fichier jenkinsfile, et les avantages de cette approche.
** Auteur ** : Macougoum junie
** Contexte ** : formation Bootcamp DevOps promotion 15
** Centre de formation ** : eazytraining.fr
** LinkedIn ** : https://www.linkedin.com/in/

Aperçu du pipeline CI/CD
pipeline après Exécution


Workflow du Pipeline CI/CD avec Conditions d'Exécution

### Build image
Construit l'image Docker en utilisant le Dockerfile que j'ai créé.

### Run container based on builded image
Ce stage permet de recuperer tous les containeurs et s'il existe un sous le même nom que celui que nous voulions executer alors on le supprime et par la suite on execute le nouveau pour être sûr de travailler avec la version la plus recente du build.

### Test image
Teste le service en effectuant une requête HTTP et en vérifiant la présence d'un contenu spécifique (Dimension dans ce cas) dans la réponse .


### Login and Push Image on docker hub
Ce stage publie l'image docker de notre application sur dockerhub apres l' ajout du mot de passe de notre compte dockerhub sur jenkins avec comme id dockerhub_password.

### STAGING - Deploy app et PROD - Deploy app
Condition : S'exécute lorsqu'un commit est poussé sur la branche main cas du deploiement en prod.
Ce stage déploie l'application dans les environnements de staging  et de prod sur eazylabs.

### Test de l'application
Pour s'assurer que le deploiement en staging et en production s'est bien effectuée, on envoie des notifications dans un channel privé slack que nous avons au préalable configuré dans notre jenkins.

### appercue des notifications



## Aperçu du site

webapp
webapp


## Technologies utilisées
Docker : Pour conteneuriser l'application et faciliter son déploiement.
Jenkins : Pour automatiser les étapes de construction, de test et de déploiement de l'application.
Slack: pour recevoir des notification provenant de jenkins.
Eazylabs : Pour héberger l'application dans différents environnements ( staging et production).
