<template>
  <v-app id="app">
    <Header></Header>
    <ContentView :eList="eList"></ContentView>
  </v-app>
</template>

<script>
import axios from "axios";
import Header from "./components/Header.vue"
import ContentView from "./components/ContentView.vue"

export default {
  components: {
    Header,
    ContentView,
  },
  el: '#app',
  data(){
    return {
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
