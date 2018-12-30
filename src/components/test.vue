<template>
<div id="test" >
  <button @click="setProv()">set Prov</button>
  <button @click="$emit('test')">test  datat</button>

</div>
</template>

<script>
import Web3 from "web3";

export default {
  name: "test",
  props: {},
  methods: {
    async setProv() {
      // ? typeof web3 !== ‘undefined’   need to be check?
      if (window.ethereum) {
        // ? miss this one???
        const ethereum = window.ethereum;
        window.web3 = new Web3(ethereum);
        try {
          // Request account access if needed
          await ethereum.enable();
          // Acccounts now exposed
        } catch (error) {
          console.log(error);
        }
      } else if (window.web3) {
        window.web3 = new Web3(web3.currentProvider);
      } else {
        console.log(
          "Non-Ethereum browser detected. You should consider trying MetaMask!"
        );
      }
    }
  }
};
</script>

<style>
</style>
