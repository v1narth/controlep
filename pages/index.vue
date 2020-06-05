<template lang="pug">
	div.Index
		v-parallax.background( :src="require('~/assets/images/house.jpg')" )
			//- v-card.contact-card( width="450" )
			//- 	v-card-title Lorem ipsum dolor?
			//- 	v-card-subtitle Lorem es una iterat un de
			//- 	v-card-text
			//- 		label Email cim
			//- 		input
			//- 		v-btn.mt-4( color="primary" outlined ) Kuldes
			//- 			v-icon( right small ) far fa-paper-plane

		div.Index__content
			//- div.Index__banner
			//- 	Logo.logo( height="125px" )
			//- 	span.slogan Alaptól építünk

			section.content__item.pt-5
				h2.headline--small Szolgáltatásaink
				client-only
					transition(name="fade" appear)
						div.swiper( v-swiper:mySwiper="swiperOptions" )
							div.swiper-wrapper
								div.swiper-slide(v-for="(item, index) in swiperItems" :key="item.title" @click="handleSlideClick(item)")
									div.slide-wrapper
										v-card.card( :color="tab === index ? 'primary' : '#44458a'" height="100" dark)
											v-img.image.align-end( :src="require('~/assets/images/pattern2.png')" )
												v-card-title.headline--uppercase.font-weight-bold.text-center( v-text="item.title" )
				transition(name="fade" mode="out-in" appear)
					div.tab__content( v-if="swiperItems[tab]" :key="tab" )
						h2.headline {{ swiperItems[tab].title }}
						div {{ swiperItems[tab].content }}
			section.content__item.grey.lighten-5
				div.item--header
					h2.headline--small.mb-5 Referenciak
				client-only
					div.swiper( v-swiper:mySwiper2="swiperOptions2" )
						div.swiper-wrapper
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
							div.swiper-slide
								v-img( src="https://picsum.photos/500/300" )
				nuxt-link.read-more.my-2( :to="{ name: 'referenciak' }" ) Tobbi kepek
					i.fas.fa-arrow-right.ml-2
			
			//- section.content__item
			//- 	hr
			section.content__item
				h2.headline--small Rolunk
				br
				div
					b Kedves Látogató!
					br
					br
					| Az építőiparban eltöltött sok éves tapasztalat alapján hiányát éreztük egy olyan cégnek a piacon, amely a kis- és lakossági megrendelői réteget – az "átlag embert" - olyan teljeskörűséggel és megbízható szakszerűséggel látja el, mint ami egy nagyvállalati projekt esetében megkövetelt, elvárható.
					br
					br
					| Cégünk, a ControlÉp Kft. 2010-ben alakult azzal a célkitűzéssel, hogy megbízható, gyors és korrekt, főképp Megrendelői felé közvetlen jó viszont ápoló generál kivitelező csapatot állítson fel, egykézben tartva a kivitelezést alapoktól a kulcsrakész állapotig. Erre alapozva hoztuk létre és irányítjuk irányítjuk cégünket, ehhez igazodva alakítottuk ki eszköz, gép-és szakember állományunkat.
					br
					br
					| Az elmúlt évek igazolták azt az elképzelést, mely alapján felállítottuk elveinket, ennek köszönhető az, hogy az elkészült munkáink (otthonok, irodák,…) és elégedett ügyfeleink révén kapjuk megbízásainkat. Sorra keresnek meg minket Önkormányzatok és nagyobb projektek mellett azon elégedett családok rokonai és barátai akik saját szemükkel győződtek meg munkánk eredményéről.
					br
					br
					| Szeretnénk ha Önt, vagy cégét is megajándékozhatnánk azzal a meglepetéssel, amely az a kellemes pozitív csalódás amit nyújtani tudunk, miszerint a ControlÉp Kft. azért jött létre, hogy a Megrendelő legyen az első.
					br
					br
					| A korrekt és megbízható kölcsönös együttműködés folyamatos, gördülékeny munkavégzést és egy garantáltan jó eredmény ígéretét foglalja magába.
					br
					br
					| Bízunk abban, hogy rövidesen Önt is Megrendelőink között tudhatjuk, és beválthatjuk ígéretünket.
					br
					br
					| Gyorsan Hatékonyan, Szépet és Jót hozhatunk létre az álmokat kézzelfoghatóvá varázsolva.
</template>

<script>
import Logo from "~/components/Logo";
export default {
	components: {
		Logo
	},
	data: () => ({
		tab: 0,
		swiperOptions: {
			slidesPerView: 2.45,
			spaceBetween: 20,
			freeMode: true
		},
		swiperOptions2: {
			slidesPerView: 3.45,
			spaceBetween: 10,
			freeMode: true,
			autoplay: {
				delay: 5000
			}
		},
		swiperItems: [
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
	}),
	watch: {
		"$route.query": {
			handler(query) {
				this.tab = this.swiperItems.indexOf(
					this.swiperItems.find(item =>
						query.tab ? item.title === query.tab : true
					)
				);
			},
			immediate: true
		}
	},
	methods: {
		handleSlideClick(item) {
			this.$router.push({ query: { tab: item.title } });
		}
	}
};
</script>

<style lang="scss">
.Index {
	background: #fff;
	.background {
		height: 70vh !important;
		width: 100%;
		-o-object-fit: cover;
		object-fit: cover;
		filter: saturate(1.5);
		background: #f8f8f8;

		.v-parallax__image {
			bottom: 315px;
		}
		.contact-card {
			position: relative;
			left: 150px;
			opacity: 0.98;

			input {
				height: 40px;
				border: 1px solid #dedede;
				width: 100%;
				outline: none !important;
				box-shadow: 1px 1px 5px 0 rgba(0, 0, 0, 0.06);
				padding: 0 1em;
			}
		}
	}

	&__banner {
		height: 23vh;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;

		.logo {
			animation: logo 2.5s;
			cursor: initial;
		}
		.slogan {
			animation: slogan 2.5s;
			font-family: "Raleway", sans-serif;
			font-weight: 500;
			font-size: 25px;
			transform: translateX(-170px) translateY(-15px);
			color: $color-green;
			font-variant-caps: all-petite-caps;
		}
	}
	&__content {
		// padding: 0 1em;
		// width: 60%;
		// margin: auto;
		font-family: "Raleway", sans-serif;
		font-size: 21px;
		font-weight: 300;
		text-align: justify;
		padding-bottom: 2em;

		section.content__item {
			padding: 2em 20% 1em;

			hr {
				border-top: 1px dashed #fff !important;
			}

			div.item--header {
				display: flex;
				justify-content: space-between;
				align-items: center;
				margin-bottom: 0.5em;
			}
		}

		.read-more {
			font-size: 14px;
			color: $color-green;
		}
	}

	div.swiper {
		// margin-bottom: 0.5em;

		div.slide-wrapper {
			padding: 1em 0;

			div.v-card {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				padding: 0;
				text-align: justify;
				cursor: pointer;

				&:hover {
					opacity: 0.85;
				}
			}
			div.image {
				height: 100%;
			}
		}
	}
	div.tab__content {
		// margin-bottom: 2em;
	}
}

@keyframes logo {
	0% {
		opacity: 0;
		transform: translateY(-5px);
	}
	100% {
		opacity: 1;
		transform: translateY(0px);
	}
}
@keyframes slogan {
	0% {
		opacity: 0;
		transform: translateX(-250px) translateY(-15px);
	}
	50% {
		opacity: 0;
	}
	100% {
		opacity: 1;
		transform: translateX(-170px) translateY(-15px);
	}
}
</style>
