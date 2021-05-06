<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER m" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#h" algoitem="h EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#m" algoitem="m EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="3#h#1#pasliste" algoitem="AFFICHER h"/>
        <item code="3#m#1#pasliste" algoitem="AFFICHER m"/>
        <item code="3#s#1#pasliste" algoitem="AFFICHER s"/>
        <item code="2#h#pasliste" algoitem="LIRE h"/>
        <item code="2#m#pasliste" algoitem="LIRE m"/>
        <item code="2#s#pasliste" algoitem="LIRE s"/>
        <item code="6#s== 60" algoitem="SI (s== 60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
            <item code="5#m#m+1#pasliste" algoitem="m PREND_LA_VALEUR m+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#m==60" algoitem="SI (m==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#m#0#pasliste" algoitem="m PREND_LA_VALEUR 0"/>
            <item code="5#h#h+1#pasliste" algoitem="h PREND_LA_VALEUR h+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#h==24" algoitem="SI (h==24) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#h#0#pasliste" algoitem="h PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#dans une seconde il sera#1" algoitem="AFFICHER &quot;dans une seconde il sera&quot;"/>
        <item code="3#h#0#pasliste" algoitem="AFFICHER h"/>
        <item code="4#h#0" algoitem="AFFICHER &quot;h&quot;"/>
        <item code="3#m#0#pasliste" algoitem="AFFICHER m"/>
        <item code="4#m#0" algoitem="AFFICHER &quot;m&quot;"/>
        <item code="3#s#0#pasliste" algoitem="AFFICHER s"/>
        <item code="4#s#0" algoitem="AFFICHER &quot;s&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
