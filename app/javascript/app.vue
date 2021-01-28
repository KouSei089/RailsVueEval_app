<template>
  <v-app id="app">
    <Header></Header>
    <!-- navigationbar -->
    <v-bottom-navigation :value="value" color="teal" glow>
      <v-btn>
        <span>Home</span>
        <v-icon>mdi-history</v-icon>
      </v-btn>
      <v-btn>
        <span>Service</span>
        <v-icon>mdi-heart</v-icon>
      </v-btn>
      <v-btn>
        <span>Language</span>
        <v-icon>mdi-map-marker</v-icon>
      </v-btn>
    </v-bottom-navigation>
    <!-- navigationbar -->
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
