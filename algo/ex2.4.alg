<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="p1 PREND_LA_VALEUR d1+d2+d3"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#d1" algoitem="d1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#d2" algoitem="d2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#d3" algoitem="d3 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#p1" algoitem="p1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#p2" algoitem="p2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#p3" algoitem="p3 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#p4" algoitem="p4 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#d1#&quot;belle marquise&quot;#pasliste" algoitem="d1 PREND_LA_VALEUR &quot;belle marquise&quot;"/>
        <item code="5#d2#&quot;vos beaux yeux&quot;#pasliste" algoitem="d2 PREND_LA_VALEUR &quot;vos beaux yeux&quot;"/>
        <item code="5#d3#&quot;me font mourir d'amour&quot;#pasliste" algoitem="d3 PREND_LA_VALEUR &quot;me font mourir d'amour&quot;"/>
        <item code="5#p1#d1+d2+d3#pasliste" algoitem="p1 PREND_LA_VALEUR d1+d2+d3"/>
        <item code="5#p2#d2+d3+d1#pasliste" algoitem="p2 PREND_LA_VALEUR d2+d3+d1"/>
        <item code="5#p3#d3+d2+d1#pasliste" algoitem="p3 PREND_LA_VALEUR d3+d2+d1"/>
        <item code="5#p4#d1+d3+d2#pasliste" algoitem="p4 PREND_LA_VALEUR d1+d3+d2"/>
        <item code="3#p1#1#pasliste" algoitem="AFFICHER p1"/>
        <item code="3#p2#0#pasliste" algoitem="AFFICHER p2"/>
        <item code="3#p3#0#pasliste" algoitem="AFFICHER p3"/>
        <item code="3#p4#1#pasliste" algoitem="AFFICHER p4"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
