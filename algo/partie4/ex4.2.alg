<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (m==60) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez les heures&quot;" code="4#entrez les heures#0"/>
        <item algoitem="AFFICHER &quot;entrez les minutes&quot;" code="4#entrez les minutes#0"/>
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="LIRE m" code="2#m#pasliste"/>
        <item algoitem="SI (m==60) ALORS" code="6#m==60">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="m PREND_LA_VALEUR 0" code="5#m#0#pasliste"/>
            <item algoitem="h PREND_LA_VALEUR h+1" code="5#h#h+1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (m&lt;60) ALORS" code="6#m&lt;60">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="m PREND_LA_VALEUR m+1" code="5#m#m+1#pasliste"/>
            <item algoitem="h PREND_LA_VALEUR h" code="5#h#h#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;dans une minutes  il sera&quot;" code="4#dans une minutes  il sera#0"/>
        <item algoitem="AFFICHER h" code="3#h#0#pasliste"/>
        <item algoitem="AFFICHER &quot;heures&quot;" code="4#heures#1"/>
        <item algoitem="AFFICHER m" code="3#m#0#pasliste"/>
        <item algoitem="AFFICHER &quot;minutes&quot;" code="4#minutes#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
