<template>
  <v-app id="app">
    <Header></Header>
    <FixedNav></FixedNav>
    <router-view></router-view>
    <ContentView :eList="eList"></ContentView>
  </v-app>
</template>

<script>
import axios from "axios";
import ContentView from "./components/ContentView.vue"
import Header from "./components/Header.vue"
import FixedNav from "./components/FixedNav.vue"

export default {
  components: {
    Header,
    FixedNav,
    ContentView,
  },
  el: '#app',
  data(){
    return {
      value: 1,
      eList: ['', ''],
    }
  },
  mounted() {
    this.listE();
  },
  methods: {
    listE: function() {
      axios.get('/api/users')
      .then(response => {
        this.eList = response.data
      });
    }
  },
}
</script>
