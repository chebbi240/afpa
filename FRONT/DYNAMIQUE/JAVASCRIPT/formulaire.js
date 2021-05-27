// Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.
// Lorsqu'une erreur est détectée, l'utilisateur doit en être informé grâce à l'affichage d'un message sous le champ concerné.
// Le formulaire ne peut être envoyé que lorsque tout est bon.
 
//les variables suivantes définissent les caractères autorisés à l'utilisateur lors du remplissage du formulaire
var vnom = new RegExp(/^[A-Za-z-ïÏîÎêÊâ èÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ]+$/)
var vprenom = new RegExp(/^[A-Za-z-ïÏîÎêÊâ èÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ]+$/)
var vcp = new RegExp(/^[0-9]{5}$/)
var vadress = new RegExp(/^[0-9A-Za-z-ïÏîÎêÊâ èÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ,]+$/)
var vcity = new RegExp(/^[A-Za-z-ïÏîÎêÊâ èÈéÉëËàÀòÒôÔöÖñÑçüÜùÙ ]+$/)
 
function checkForm(form)
{
    //Test du Nom
    if(form.lastName.value == "") {
        document.getElementById("1").style.color = "#ff0000";
        document.getElementById("1").innerHTML = "Remplissez le champ s'il vous plait";
        form.lastName.focus();
        return false;
    }
    if(!vnom.test(form.lastName.value)) {
        document.getElementById("1").style.color = "#ff0000";
        document.getElementById("1").innerHTML = "N'utilisez que des minuscules, majuscules ou accents s'il vous plait";
        form.lastName.focus();
        return false;
    }
    // Test du prénom
    if(form.firstName.value == "") {
        document.getElementById("2").style.color = "#ff0000";
        document.getElementById("2").innerHTML = "Remplissez le champ s'il vous plait";
        form.firstName.focus();
        return false;
    }
    if(!vprenom.test(form.firstName.value)) {
        document.getElementById("2").style.color = "#ff0000";
        document.getElementById("2").innerHTML = "N'utilisez que des minuscules, majuscules ou accents s'il vous plait";
        form.firstName.focus();
        return false;
    }
    //Test de la radio
    if(form.sujet.value == "") {
        document.getElementById("7").style.color = "#ff0000";
        document.getElementById("7").innerHTML = "Remplissez le champ s'il vous plait";
        form.sujet.focus();
        return false;
    }
    //Test du code postal
    if(form.cp.value == "") {
        document.getElementById("3").style.color = "#ff0000";
        document.getElementById("3").innerHTML = "Remplissez le champ s'il vous plait";
        form.cp.focus();
        return false;
    }
    if(!vcp.test(form.cp.value)) {
        document.getElementById("3").style.color = "#ff0000";
        document.getElementById("3").innerHTML = "N'utilisez que des chiffres s'il vous plait";
        form.cp.focus();
        return false;
    }
    //Test de l'adresse
    if(form.adress.value == "") {
        document.getElementById("4").style.color = "#ff0000";
        document.getElementById("4").innerHTML = "Remplissez le champ s'il vous plait";
        form.adress.focus();
        return false;
    }
    if(!vadress.test(form.adress.value)) {
        document.getElementById("4").style.color = "#ff0000";
        document.getElementById("4").innerHTML = "N'utilisez que des minuscules, majuscules ou accents s'il vous plait";
        form.adress.focus();
        return false;
    }
    //Test de la ville
    if(form.city.value == "") {
        document.getElementById("5").style.color = "#ff0000";
        document.getElementById("5").innerHTML = "Remplissez le champ s'il vous plait";
        form.city.focus();
        return false;
    }
    if(!vcity.test(form.city.value)) {
        document.getElementById("5").style.color = "#ff0000";
        document.getElementById("5").innerHTML = "N'utilisez que des minuscules, majuscules ou accents s'il vous plait";
        form.city.focus();
        return false;
    }
    //Test de la sujet
    if(form.question.value == "") {
        document.getElementById("6").style.color = "#ff0000";
        document.getElementById("6").innerHTML = "Remplissez le champ s'il vous plait";
        form.question.focus();
        return false;
    }
    if (form.agree.checked === false) {
        document.getElementById("8").style.color = "#ff0000";
        document.getElementById("8").innerHTML = "Vous devez accepter le traitement de ce formulaire pour l'envoyer";
        form.agree.focus();
        return false;
    }
    return true;
}
