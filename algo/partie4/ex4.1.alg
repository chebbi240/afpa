<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (tutu>toto+4  ou  tata&lt;>&quot;ok&quot;) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="toto EST_DU_TYPE NOMBRE" code="1#NOMBRE#toto"/>
        <item algoitem="tutu EST_DU_TYPE NOMBRE" code="1#NOMBRE#tutu"/>
        <item algoitem="tata EST_DU_TYPE CHAINE" code="1#CHAINE#tata"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez toto&quot;" code="4#entrez toto#0"/>
        <item algoitem="LIRE toto" code="2#toto#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez tutu&quot;" code="4#entrez tutu#0"/>
        <item algoitem="LIRE tutu" code="2#tutu#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez tata&quot;" code="4#entrez tata#0"/>
        <item algoitem="LIRE tata" code="2#tata#pasliste"/>
        <item algoitem="SI (tutu>toto+4  ou  tata&lt;>&quot;ok&quot;) ALORS" code="6#tutu>toto+4  ou  tata&lt;>&quot;ok&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="tutu PREND_LA_VALEUR tutu+1" code="5#tutu#tutu+1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="tutu PREND_LA_VALEUR tutu-1" code="5#tutu#tutu-1#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
