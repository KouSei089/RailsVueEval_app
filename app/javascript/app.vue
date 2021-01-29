<template>
  <v-app id="app">
      <v-toolbar color="blue lighten-3" dark>
      <v-toolbar-title>Evaluation</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-avatar color="grey lighten-2"></v-avatar>
      <div class="text-center">
        <v-container>
          <v-dialog v-model="dialog" width="1000">
            <template v-slot:activator="{ on, attrs }">
              <v-btn color="yellow darken-2" dark v-bind="attrs" v-on="on" @click="togglePostModel()">
                POST
              </v-btn>
            </template>
        <!-- 投稿画面 -->
            <v-card>
              <v-card-title class="headline yellow darken-2">
                Post Create
              </v-card-title>

              <v-text-field v-model="postTitle" label="Title" required style="margin: 20px; margin-top:30px">
              </v-text-field>
              <v-text-field v-model="postService" label="Service Name" required style="margin: 20px; margin-top:30px">
              </v-text-field>
              <v-text-field v-model="postLanguage" label="Language Name" required style="margin: 20px; margin-top:30px">
              </v-text-field>
              <v-card-text>
                <p>Evaluation</p>
                <div style='width:100%;'>
                  <textarea style='width:100%; height:300px; background-color:#efefef; padding:3px' v-model='postDiscription'></textarea> 
                </div>
              </v-card-text>

              <v-divider></v-divider>

              <v-card-actions>
                <v-btn color="red" text @click="dialog = false">Cancel</v-btn>
                <v-spacer></v-spacer>
                <v-btn color="grey" text @click="postEvaluation">
                  Add Evaluation
                </v-btn>
              </v-card-actions>
            </v-card>
          </v-dialog>
        </v-container>
      </div>
    </v-toolbar>
    <v-bottom-navigation :value="value" color="teal" glow>
      <v-btn>
        <span>
          <router-link to="/home">Home</router-link>
        </span>
        <v-icon>mdi-history</v-icon>
      </v-btn>
      <v-btn>
        <span>
          <router-link to="/service">Service</router-link>
        </span>
        <v-icon>mdi-heart</v-icon>
      </v-btn>
      <v-btn>
        <span>
          <router-link to="/language">Language</router-link>
        </span>
        <v-icon>mdi-map-marker</v-icon>
      </v-btn>
    </v-bottom-navigation>
    <router-view></router-view>
    <v-container style="height: 1000px">
      <v-card v-for="eval in evals" style="margin-top:10px">
        <v-card-title>
          <h3>{{ eval.title }}</h3>
        </v-card-title>
        <v-card-subtitle>{{ eval.service }}</v-card-subtitle>
        <v-card-subtitle>{{ eval.language }}</v-card-subtitle>
        <v-card-text style="width:100%; height:100px; background-color:#efefef;">{{ eval.description }}</v-card-text>
        <v-card-actions>
          <v-btn flat color="red">Update</v-btn>
          <v-btn flat color="gray">Delete</v-btn>
        </v-card-actions>
      </v-card>
    </v-container>
  </v-app>
</template>

<script>
import axios from "axios";
//import ContentView from "./components/ContentView.vue"
//import Header from "./components/Header.vue"
//import FixedNav from "./components/FixedNav.vue"

export default {
  //components: {
    //Header,
    //FixedNav,
    //ContentView,
  //},
  el: '#app',
  data(){
    return {
      value: 1,
      evals: ["","","",""],
      dialog: false,
      postTitle: '',
      postService: '',
      postLanguage: '',
      postDiscription: '',
    }
  },
  mounted() {
    this.setEval();
  },
  methods: {
    setEval: function() {
      axios.get('/api/users')}
      .then(response => {
        this.evals = response.data
      })
    },
    togglePostModel: function() {
        this.dialog = !this.dialog
      },
    postEvaluation: function() {
      axios.post('/api/users', {title: this.postTitle, service: this.postService, language: this.postLanguage, description: this.postDiscription})
      .then( response => {
        this.setEval()
        this.postTitle = ''
        this.postService = ''
        this.postLanguage = ''
        this.postDiscription = ''
      });
      this.dialog = !this.dialog
    }
  }    
</script>
