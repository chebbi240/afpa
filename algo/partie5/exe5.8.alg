<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="ipg PREND_LA_VALEUR i" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="pg EST_DU_TYPE NOMBRE" code="1#NOMBRE#pg"/>
        <item algoitem="ipg EST_DU_TYPE NOMBRE" code="1#NOMBRE#ipg"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="n PREND_LA_VALEUR 1" code="5#n#1#pasliste"/>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="pg PREND_LA_VALEUR 0" code="5#pg#0#pasliste"/>
        <item algoitem="TANT_QUE (n!=0) FAIRE" code="15#n!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;entrez un nombre :&quot;" code="4#entrez un nombre :#1"/>
            <item algoitem="LIRE n" code="2#n#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="SI (i==1 OU n>pg) ALORS" code="6#i==1 OU n>pg">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="pg PREND_LA_VALEUR n" code="5#pg#n#pasliste"/>
                <item algoitem="ipg PREND_LA_VALEUR i" code="5#ipg#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;le nombre le plus grand était:&quot;" code="4#le nombre le plus grand était:#1"/>
        <item algoitem="AFFICHER pg" code="3#pg#1#pasliste"/>
        <item algoitem="AFFICHER &quot;il a été saisi en position numéro &quot;" code="4#il a été saisi en position numéro #1"/>
        <item algoitem="AFFICHER ipg" code="3#ipg#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
