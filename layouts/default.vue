<template lang="pug">
	div#layout
		v-app
			Navbar
			transition( name="fade" )
				nuxt.page
			v-footer( color="primary" padless )
				v-row( justify="center" no-gutters )
					v-btn.my-2( v-for="route in routes" :key="route.text" color="white" text rounded nuxt :to="{ name: route.name }" ) {{ route.text }}
					v-col.primary.darken-1.py-4.text-center.white--text( cols="12" ) {{ new Date().getFullYear() }} -
						| Minden jog fenntartva <b>Controlép Kft</b> - <i>Alaptól építünk! </i>


</template>

<script>
import Navbar from "~/components/Navbar";
import routes from "~/config/routes";
export default {
	components: {
		Navbar
	},
	data: () => ({
		routes
	})
};
</script>

<style lang="scss">
a {
	text-decoration: none;
	color: initial;
}
.page {
	min-height: calc(100vh - 70px);
}

/* Enter and leave animations can use different */
/* durations and timing functions.              */
.fade-enter-active {
	transition: all 0.4s ease;
}
.fade-leave-active {
	transition: all 0.4s ease;
}
.fade-enter,
.fade-leave-to {
	transform: translateY(-10px);
	opacity: 0;
}
</style>
