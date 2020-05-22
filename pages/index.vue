<template lang="pug">
	div.Index
		v-parallax.background( :src="parallax" )
		//- img.background(src="~/assets/images/house.jpg")
		div.Index__banner
			Logo.logo( height="125px" )
			span.slogan Alaptól építünk
		div.Index__content
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
		parallax: require("~/assets/images/house.jpg")
	})
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
		width: 60%;
		margin: auto;
		font-family: "Raleway", sans-serif;
		font-size: 21px;
		font-weight: 300;
		text-align: justify;
		padding-bottom: 2em;
	}
}

@keyframes logo {
	0% {
		opacity: 0;
		transform: translateY(60px);
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
