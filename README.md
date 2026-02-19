Contexte 
Le but de ce premier Cas avait pour objectif de mettre une approche IaaC en utilisant Terraform et Ansible afin d'automatiser la creation et configuration de Notre Infras
Notre environnement utilise un Hyperviseur Proxmox.

I. Terraform
Terraform a été utilisé ici pour automatiser la création de nos ressources suivantes:
- Le Clonage d'une template linux sur Proxmox
- Creation de deux machines virtuelles:
  * Une Vm Web
  * Une Vm DB
- La connexion des deux Vms sur le meme réseau
- La possibilité de recréer ou d'effacer l'infrastructure via nos commandes Terra
Il permet donc de garantir la reproductiblité de l'Infra

II. Ansible 
Lui il sert a configurer les machines créees par Terraform
il a permis : 
* de créer un user deploy pour nos 2 Vms
* Installation et demarrage du Serveur MariaDB sur Vmdb
* Installation et demarrage du serveur web avec Nginx
* La réexecutation sans modification
En definitif il joue un role dans l'automatisation de configuration logicielles des serveurs.


III. Strucure du Flux
<img width="728" height="520" alt="image" src="https://github.com/user-attachments/assets/3667b685-d5de-4375-bdb9-e3c14a18f4b6" />
