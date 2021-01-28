<template>
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
</template>

