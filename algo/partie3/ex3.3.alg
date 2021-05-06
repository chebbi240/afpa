<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;les prénoms ne sont pas classées dans l'ordre alphabétique &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prénom1 EST_DU_TYPE CHAINE" code="1#CHAINE#prénom1"/>
        <item algoitem="prénom2 EST_DU_TYPE CHAINE" code="1#CHAINE#prénom2"/>
        <item algoitem="prénom3 EST_DU_TYPE CHAINE" code="1#CHAINE#prénom3"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE prénom1" code="2#prénom1#pasliste"/>
        <item algoitem="LIRE prénom2" code="2#prénom2#pasliste"/>
        <item algoitem="LIRE prénom3" code="2#prénom3#pasliste"/>
        <item algoitem="SI (prénom1&lt;prénom2 ET prénom2&lt;prénom3) ALORS" code="6#prénom1&lt;prénom2 ET prénom2&lt;prénom3">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;les prénoms sont classés dans l'ordre alphabétique&quot;" code="4#les prénoms sont classés dans l'ordre alphabétique#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;les prénoms ne sont pas classées dans l'ordre alphabétique &quot;" code="4#les prénoms ne sont pas classées dans l'ordre alphabétique #1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
