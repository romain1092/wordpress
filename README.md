wordpress
=========

Affichage de phpinfo() :

Pré-requis à effectuer pour le lancement de la vm Vagrant : https://github.com/dduportal/epsi-ha-2014-tp

Lorsque vous êtes dans la console, effectuez la commande : "cd epsi-ha-2014-tp" pour se retrouver dans le dossier où se trouve vagrant puis tapez la commande "vagrant status" pour vérifier l'état de vagrant. 

Si Vagrant n'est pas démarré tapez "vagrant up" puis une fois vagrant démarré tapez "vagrant ssh" pour la connexion en ssh au CoreOS sinon tapez directement "vagrant ssh" si vagrant est déjà en mode up.

Tapez ensuite la commande "git clone https://github.com/romain1092/wordpress" afin de récupérer mon github. Tapez ensuite la commande "git clone https://github.com/romain1092/tutum-docker-mysql" pour récupérer le dockerfile contenant l'installation de mysql.

Tapez les commandes suivantes pour builder les images récupérées précédemment :

- Pour mysql : "docker run -d -p 3306/3306 mysql"
- Pour nginx : "docker run -d -p 9000:9000 phpfpm"
- Pour php-fpm : "docker run -d -p 80:80 nginx"

l'option -d est le mode détaché et l'option -p permet de définir les différents ports utilisés.

En allant dans un navigateur web, tapez l'adresse 127.0.0.1:5080, le "hello world" apparait. Puis tapez 127.0.0.1:5080/index.php, phpinfo() apparait.

NANOU Romain
