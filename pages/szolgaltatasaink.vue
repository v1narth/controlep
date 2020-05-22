<template lang="pug">
    div.Services
        v-list( disabled )
            v-list-item-group( color="primary" )
                v-list-item.mb-5( v-for="(item, index) in items" :key="index" )
                    v-list-item-content
                         v-list-item-title.Services__title {{ item.title }}
                         v-list-item-subtitle.Services__subtitle  {{ item.content }}
</template>

<script>
export default {
	data: () => ({
		items: [
			{
				title: "Tervezés",
				content:
					"A tér teremtés legfontosabb állomása, amelyben szívesen résztveszünk  szakképzet, gyakorlott tervezői gárdánk segítségével Tisztelt Építtetők igénye esetén."
			},
			{
				title: "Vállalkozás műszaki előkészítés",
				content:
					"Tervezői asztalon született (akár Megrendelő által szolgáltatott) engedélyezési vagy kiviteli tervdokumentáció alapján pontos anyag mennyiség számítása, valamint Terc V.I.P program segítségével tételes árazott (Tervezői igény szerint árazatlan),munkanemekre bontott költségvetést készítése, mely később a megállapodás alapját képezi a kivitelezés végéig."
			},
			{
				title: "Geodézia",
				content:
					"Épületek helyének, sarokpontjainak, magasságok kitűzése, építés folyamán állandó ellenőrzési feladatok végzése."
			},
			{
				title: "Épület- és Lakás felújítás",
				content:
					"Újonnan vásárolt ingatlan vagy meglévő, de renoválásra szoruló építmények igény szerinti felújítása, átalakítása mindig nagy kihívás, hiszen az új építéssel ellentétben az eltakart szerkezetek és rétegek okozhatnak meglepetést, illetve esetleges funkcióváltások alkalmával a meglévő épületszerkezetek bontása- kiváltása is fejtörést okozhat a tulajdonosoknak. Ezeket a problémákat igyekszünk az Ön válláról levenni és együttműködve kompromisszumok nélküli új életteret alkotni."
			},
			{
				title: "Új épületek építése",
				content:
					"Ez a legösszetettebb feladat, ugyanakkor a legfelelősségteljesebb is, ami alatt nem csak az előírások és szabályok betartását értjük. Az alapvető bizalom szükséges mindkét fél részéről, hiszen a kivitelezésben résztvevő feleknek egymással összhangban és szoros együttműködésben kell végigkísérniük az építkezést annak érdekében, hogy a végeredmény minden apró részletében maradéktalanul a Megrendelő megelégedettségére szolgáljon. Ennek érdekében minden tőlünk telhetőt megteszünk és az elmúlt évek tapasztalatai alapján igen nagy sikerrel. Hosszú évek óta együttműködő megbízható kollégáink, beszállító partnereink és szak-alvállalkozó társaink jelenléte a garancia a sikeres kiviteli munkák elvégzésében."
			}
		]
	})
};
</script>

<style lang="scss">
.Services {
	width: 60%;
	margin: auto;

	&__title {
		font-size: 24px !important;
	}
	&__subtitle {
		font-size: 21px !important;
		white-space: normal !important;
		font-weight: 300;
		text-align: justify;
	}
}
</style>