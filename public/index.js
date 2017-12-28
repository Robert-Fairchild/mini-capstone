/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      products: []
    };
  },
  mounted: function() {
    axios.get("/v1/products").then(
      function(response) {
        this.products = response.data;
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var productsShowPage = {
  template: "#products-show-page",
  data: function() {
    return {
      product: {
        name: "Sample name",
        description: ["Sample description"],
        price: ["Sample price"]
      }
    };
  },
  created: function() {
    axios.get("/v1/products/" + this.$route.params.id).then(
      function(response) {
        this.product = response.data;
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var SamplePage = {
  template: "#sample-page",
  data: function() {
    return {
      message: "Welcome to a sample page!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/v1/products/:id", component: productsShowPage },
    { path: "/sample", component: SamplePage }
  ]
});

var app = new Vue({
  el: "#app",
  router: router
});
