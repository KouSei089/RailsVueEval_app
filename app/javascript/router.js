import VueRouter from 'vue-router';
import NavHome from './views/NavHome.vue';
import NavService from './views/NavService.vue';
import NavLanguage from './views/NavLanguage.vue';


export default new VueRouter({
  routes: [
    {path: '/home', components: NavHome}, 
    {path: '/service', component: NavService}, 
    {path: '/language', component: NavLanguage}, 
]
});
