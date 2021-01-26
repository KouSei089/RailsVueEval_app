<template>
  <v-app id="app">
    <v-toolbar color="blue lighten-3" dark>
      <v-toolbar-title>Evaluation</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-avatar color="grey lighten-2"></v-avatar>
      <v-btn flat>Post</v-btn>
    </v-toolbar>
    <v-container style="height: 1000px">
      <v-card>
        <v-card-title>
          <h3>Title</h3>
        </v-card-title>
        <v-card-subtitle>Servise</v-card-subtitle>
        <v-card-subtitle>Language</v-card-subtitle>
        <v-card-text style="width:100%; height:100px; background-color:#efefef;"></v-card-text>
        <v-card-actions>
          <v-btn flat color="red">Update</v-btn>
          <v-btn flat color="gray">Delete</v-btn>
        </v-card-actions>
      </v-card>
    </v-container>
  </v-app>
</template>

<script>
export default {
  el: '#app',
  data(){
  },
 
}
</script>

<style scoped>

</style>
