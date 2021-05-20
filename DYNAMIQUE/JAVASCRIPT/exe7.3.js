
    var nb1 = parseInt(prompt("Entrez votre premier nombre entier"));
    var nb2 = parseInt(prompt("Entrez votre deuxième nombre entier"));
    var operateur = prompt("entrez un opérateur +, -, * ou /");
 
    /* On traite d'abord le cas de la division par 0 :
    * si l'opérateur est division et le 2ème entier vaut 0
    * on affiche un message d'erreur
    */  
    if (operateur=="/" && nb2==0)
    {
    alert("Division par zéro : impossible");
    }
    else
    { /* Sinon, tout est OK pour effectuer le calcul demandé,
      * la structure conditionnelle 'switch' est parfaitement adaptée  
      */
switch (operateur)
   {
case "+":
resultat = nb1 + nb2;
break;

case "-":
resultat = nb1 - nb2;
break;

case "*":
resultat = nb1 * nb2;
break;

case "/":
resultat = nb1 / nb2;
break;
       
            /* Si on n'est pas rentré dans l'un des cas précédents, c'est que l'opérateur saisi est invalide,
            * on peut alors utiliser le cas par défaut pour afficher un message d'erreur */
default:
alert("Opérateur '"+operateur+"' invalide");
} // fin du switch  
     } // fin du else

     /* Si la variable resultat est de type entier, on l'affiche
* mettre une condition ici permet de ne pas afficher
* le message s'il y a une des 2 erreurs divison par zéro ou opérateur invalide
* donc pas de résultat
*/
if (typeof resultat === 'number')
{            
    alert(nb1+operateur+nb2+" = "+resultat);
}         
