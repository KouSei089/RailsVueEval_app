<template>
  <ContentView :eList="eList"></ContentView>
</template>

<script>
import axios from "axios";
import ContentView from "./components/ContentView.vue"

export default {
  components: {
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
