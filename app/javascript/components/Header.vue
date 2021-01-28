<template>
  <v-toolbar color="blue lighten-3" dark>
    <v-toolbar-title>Evaluation</v-toolbar-title>
    <v-spacer></v-spacer>
    <v-avatar color="grey lighten-2"></v-avatar>

  <div class="text-center">
    <v-dialog v-model="dialog" width="1000">
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="yellow darken-2" dark v-bind="attrs" v-on="on">
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
        <v-text-field v-model="postlanguage" label="Language Name" required style="margin: 20px; margin-top:30px">
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
  </div>
  </v-toolbar>
</template>

<script>
  export default {
    props: ["eList"],
    data () {
      return {
        dialog: false,
      }
    },
  }
</script>
