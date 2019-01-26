<template>
  <div id="app">
    <!-- <button @click="test">tt</button> -->
    <!-- <test/> -->
    <!-- <NavBar /> -->
    <LandingBanner msg="Some fashion introduce slogon"/>
    <GameRoom />
    <!-- <Footer></Footer> -->

    <!-- bluma css framework -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.min.css">
  </div>
</template>

<script>
import test from "./components/test.vue";
import LandingBanner from "./components/LandingBanner.vue";
import GameRoom from "./components/GameRoom.vue";

import Web3 from "web3";

export default {
  name: "app",
  components: {
    LandingBanner,
    GameRoom,
    // test
  },
  props: {
  },
  data: () => ({
    // contract info 
      abi: JSON.parse(
        '[{"constant": false, "inputs": [{"name": "x1", "type": "uint256"}, {"name": "y1", "type": "uint256"}, {"name": "x2", "type": "uint256"}, {"name": "y2", "type": "uint256"}, {"name": "x3", "type": "uint256"}, {"name": "y3", "type": "uint256"}], "name": "bury", "outputs": [], "payable": true, "stateMutability": "payable", "type": "function"}, {"constant": true, "inputs": [{"name": "roomNum", "type": "uint256"}], "name": "showRoom", "outputs": [{"name": "", "type": "uint256"}, {"name": "", "type": "address"}], "payable": false, "stateMutability": "view", "type": "function"}, {"constant": false, "inputs": [{"name": "roomNum", "type": "uint256"}], "name": "distributePrize", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function"}, {"constant": false, "inputs": [{"name": "roomNum", "type": "uint256"}, {"name": "x1", "type": "uint256"}, {"name": "y1", "type": "uint256"}, {"name": "x2", "type": "uint256"}, {"name": "y2", "type": "uint256"}, {"name": "x3", "type": "uint256"}, {"name": "y3", "type": "uint256"}], "name": "playGame", "outputs": [], "payable": true, "stateMutability": "payable", "type": "function"}, {"constant": true, "inputs": [], "name": "getRoomAmount", "outputs": [{"name": "", "type": "uint256"}], "payable": false, "stateMutability": "view", "type": "function"}, {"inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor"}]'
      ),
      address: "0x0C6426ea292b026c7b9E3AF2DE3053F26D726C0B"
  }),
  // data() {  
  //     return {
  //       address: "0x0C6426ea292b026c7b9E3AF2DE3053F26D726C0B"
  //     }
  // },
  methods: {
    test() { 
      // console.log(abi)
      var address = "ddd"
      console.log("call success")
      console.log(this.abi)
      console.log(window)
    },
  },
};
</script>

<style>

#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /* margin-top: 60px; */
}
</style>
