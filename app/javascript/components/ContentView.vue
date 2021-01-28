<template>
  <v-container style="height: 1000px">
      <v-card  style="margin-top: 10px" v-for="e in eList">
        <v-card-title>
          <h3>{{ e.title }}</h3>
        </v-card-title>
        <v-card-subtitle>{{ e.service }}</v-card-subtitle>
        <v-card-subtitle>{{ e.language }}</v-card-subtitle>
        <v-card-text style="width:100%; height:100px; background-color:#efefef;">{{ e.description }}</v-card-text>
        <v-card-actions>
          <v-btn flat color="red">Update</v-btn>
          <v-btn flat color="gray">Delete</v-btn>
        </v-card-actions>
      </v-card>
    </v-container>
</template>

<script>
import axios from "axios";
export default {
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
