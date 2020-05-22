<template lang="pug">
	nuxt-link( :to="{ name: 'index' }" )
		img( src="~/assets/images/logos/controlap_new.svg" :style="{ height }" )
</template>

<script>
export default {
	props: {
		height: {
			type: String,
			default: "35px"
		}
	}
};
</script>

<style lang="scss" scoped>
img {
	height: 35px;
	transform: translateY(15%);
}
</style>