<template>
  <v-app id="app">
    <Header></Header>
    <FixedNav></FixedNav>
    <router-view></router-view>
  </v-app>
</template>

<script>
import Header from "./components/Header.vue"
import FixedNav from "./components/FixedNav.vue"

export default {
  components: {
    Header,
    FixedNav
  }
}
</script>
