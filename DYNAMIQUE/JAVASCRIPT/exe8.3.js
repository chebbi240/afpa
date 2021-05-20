var n = parseInt(prompt("Saisir un nombre"));  
var som = 0;      
var moy;
for (i = n; i!=0; i--)
{
    som+= i;  // La syntaxe += est équivalente à somme = somme+ i 
    moy=som/n;
}   

console.log(som); 
alert(som);
console.log(moy); 
alert(moy);