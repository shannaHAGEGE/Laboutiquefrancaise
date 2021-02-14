{{ app.user }} -> permet d'accéder a l'utilisateur, à la request, au session qui sont en cours

{{ path('')}} -> dans le href prend un parametre le nom (name) de la route

Commande : symfony console debug:router -> Permet de voir l'ensemble des route de l'application

{{ form(form) }} dans la vue twig -> j'appelle la fonction twig form a laquelle je passe en parametre la variable form qui contient le formulaire

href="{{ asset('') }}" -> va directement chercher dans le dossier public

commande pour créer ma base de donnée -> symfony console doctrine:database:create