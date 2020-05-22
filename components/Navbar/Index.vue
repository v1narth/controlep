<template lang="pug">
    div.Navbar
        div.Navbar__wrapper
            div.Navbar__logo 
                Logo
            div.Navbar__items
                nuxt-link.Navbar__item( :to="{ name: 'index' }" )
                    //- i.fas.fa-home.mr-2 
                    | Fooldal

                nuxt-link.Navbar__item( :to="{ name: 'szolgaltatasaink' }" ) 
                    //- i.fas.fa-concierge-bell.mr-2 
                    | Szolgaltatasaink

                nuxt-link.Navbar__item( :to="{ name: 'referenciak' }" ) 
                    //- i.fas.fa-images.mr-2
                    | Referenciak

                nuxt-link.Navbar__item( :to="{ name: 'partnereink' }" )
                    //- i.fas.fa-handshake.mr-2 
                    | Partnereink
                nuxt-link.Navbar__item( :to="{ name: 'aktualis' }" ) 
                    //- i.fas.fa-newspaper.mr-2
                    | Aktualis

                v-btn.white--text.ml-5( color="primary" @click.stop="dialog = true" ) 
                    i.fas.fa-id-badge.mr-2 
                    | Kapcsolat

        v-dialog.Navbar__dialog( v-model="dialog" max-width="500" )
            v-card( tile )
                v-card-title.mb-4 Kapcsolat
                //- v-separate
                v-card-subtitle 
                    b Cégadatok
                v-card-text 
                    div ControlÉp Kft
                    div 1136 Budapest; Pannónia utca 30. 1/4.
                    div Cégjegyzékszám: 01-09-949737
                    div Adószám: 23031401-2-41

                v-spacer

                v-card-subtitle 
                    b Elérhetőségeink
                v-card-text
                    div Hajnal Gábor
                    div Ügyvezető
                    div Tel: <a href="tel:+3630 514 1574" ref="call"> +3630 514 1574 </a> 
                    div E-mail: <a href="mailto:info@controlep.hu"> info@controlep.hu </a>; <a href="mailto:controlep@gmail.com"> controlep@gmail.com </a>

                v-card-actions
                    v-spacer
                    v-btn( color="primary" text @click.prevent="$refs.call.click()" )
                        i.fas.fa-phone.mr-2
                        | Hivja most!
</template>

<script>
import Logo from "~/components/Logo";
export default {
	components: {
		Logo
	},
	data: () => ({
		dialog: false
	})
};
</script>

<style lang="scss" scoped>
.Navbar {
	position: sticky;
	top: 0;
	background: #fff;
	width: 100%;
	height: 70px;
	box-shadow: 0 1px 5px 0 rgba(0, 0, 0, 0.09);
	user-select: none;
	z-index: 999;

	&__dialog {
		border-radius: 0 !important;
	}

	&__wrapper {
		display: flex;
		height: inherit;
		padding: 0 1em;
		justify-content: space-between;
		overflow: hidden;
	}

	&__logo {
		align-self: center;
		// position: relative;

		// &::after {
		// 	content: "";
		// 	position: absolute;
		// 	background: url(~assets/images/cool.png);
		// 	height: 100%;
		// 	width: 320px;
		// 	top: 10px;
		// 	left: -27px;
		// 	background-position: center;
		// 	background-size: cover;
		// 	background-repeat: no-repeat;
		// 	opacity: 0.1;
		// 	z-index: -1;
		// }
	}

	&__items {
		display: flex;
		align-items: center;

		a {
			color: initial;
		}

		.Navbar__item {
			height: 100%;
			display: flex;
			align-items: center;
			margin: 0 0.75em;
			position: relative;

			i {
				font-size: 16px;
				line-height: 0;
				color: $color-green;
				transition: 0.3s ease;
			}

			&:not(.nuxt-link-exact-active) {
				i {
					color: #ccc;
				}
				&::after {
					background: #dfdfdf;
				}
				&:hover {
					&::after {
						transition: 0.3s ease;
						transform: scaleX(1);
					}
				}
			}

			&::after {
				content: "";
				position: absolute;
				bottom: 0;
				height: 3px;
				background: #6db074;
				left: 0;
				width: 100%;
				transform: scaleX(0);
				transition: 0.1s ease;
			}

			&.nuxt-link-exact-active::after {
				transform: scaleX(1);
				transition: 0.5s ease;
			}

			&:last-child {
				margin-right: 0;
			}

			&--active {
				background: $color-green;
				padding: 0.65em 1.5em;
				border-radius: 90px;
				color: #fff;
				line-height: 1;
				box-shadow: 1px 1px 5px 0 rgba(0, 0, 0, 0.25);
				transition: 0.32s ease;
				margin-left: 1.5em;

				&:hover {
					opacity: 0.95;
					transition: 0.1s ease;
					box-shadow: none;
				}
			}
		}
	}
}
</style>
