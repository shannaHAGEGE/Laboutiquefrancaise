<?php

namespace App\Controller;


use App\Form\ChangePasswordType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AccountPasswordController extends AbstractController
{
    // injection de dependance
    private $entityManager;

    /**
     * AccountPasswordController constructor.
     * @param $entityManager
     */
    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }


    /**
     * @Route("/compte/modifier-mon-mot-de-passe", name="account_password")
     */
    public function index(Request $request, UserPasswordEncoderInterface $encoder )
    {
        $notification = null;

       // on appelle l'utilisateur connecté (appel l'objet utilisateur, je l'injecte dans la variable $user et le passer a mon formulaire
        $user = $this->getUser();

       // creation du formulaire (on appelle le formulaire, on appel la classe, on fait passer l'objet de la classe est lie le formulaire')
        $form = $this->createForm(ChangePasswordType::class, $user);

        //on appel la fonction handleRequest pour la manipulation de la requete
        $form->handleRequest($request);

        //pour savoir si le formulaire a été soumis et valide
        if ($form->isSubmitted() && $form->isValid())
        {
            //methode qui permet de comparer la mot de passe actuel et celui de base
            $old_pwd =$form->get('old_password')->getData(); // recuperer password non crypte

            if ($encoder->isPasswordValid($user, $old_pwd))
            {
                // chercher le nouveau mdp
                $new_pwd = $form->get('new_password')->getData();

                // encoder le mdp
                $password = $encoder->encodePassword($user, $new_pwd);

                $user->setPassword($password);

               // mettre a jour en bdd avec doctrine
                $this->entityManager->flush();

                $notification= "Votre mot de passe a bien été mis à jour";

            }
            else
            {
                $notification = "Votre mot de passe actuel n'est pas le bon";
            }
        }

        return $this->render('account/passsword.html.twig',
            [

            // tableau d'option a ma vue twig (passer la vue a mon twig)
           'form' => $form->createView(),
                'notification' => $notification

            ]);
    }
}
