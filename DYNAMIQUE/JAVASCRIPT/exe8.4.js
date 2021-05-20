var n = parseInt(prompt( "saisir un nombre" ));
var x=parseInt(prompt( "saisir un nombre" ));
var calcul;
do
{
    calcul= n*x;

    console.log(calcul)
    alert(calcul)
    n++;
}while(n<=10)

// instructions exécutées après le for (i vaut 10)
console.log("fin de la boucle");