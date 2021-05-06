<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (c1 ou c2 ) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#sex" algoitem="sex EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#c1" algoitem="c1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#c2" algoitem="c2 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez le sex (h/f)#1" algoitem="AFFICHER &quot;entrez le sex (h/f)&quot;"/>
        <item code="2#sex#pasliste" algoitem="LIRE sex"/>
        <item code="4#entrez lage#1" algoitem="AFFICHER &quot;entrez lage&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="5#c1#sex==&quot;M&quot; et age> 20#pasliste" algoitem="c1 PREND_LA_VALEUR sex==&quot;M&quot; et age> 20"/>
        <item code="5#c2#sex == &quot;f&quot; et (age&lt;18 et age >35)#pasliste" algoitem="c2 PREND_LA_VALEUR sex == &quot;f&quot; et (age&lt;18 et age >35)"/>
        <item code="6#c1 ou c2 " algoitem="SI (c1 ou c2 ) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#impossible#1" algoitem="AFFICHER &quot;impossible&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#non impossible#0" algoitem="AFFICHER &quot;non impossible&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
