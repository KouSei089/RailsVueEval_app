<template>
  <v-app id="app">
    <Header></Header>
    <ContentView></ContentView>
  </v-app>
</template>

<script>
import Header from "./components/Header.vue"
import ContentView from "./components/ContentView.vue"

export default {
  components: {
    Header,
    ContentView
  }
}
</script>

<style scoped>

</style>
