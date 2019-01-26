<template>
  <div id="game-room">
    <div id="play-ground">
      <div class="grid" v-for="grid in bombList" :key="grid.id" 
      @click="hitGrid(grid)" 
      :class="{ isSelected: grid.isSelected}">
        {{ grid.id}}
      </div>
    </div>

    <button @click="submitRequest()">Submit</button>
  </div>
</template>

<script>
import Web3 from "web3";

export default {
  name: "game-room",
  props: {},
  created: () => {
    // fetch data from contract & //store in value @ instant create
    //* check contract state (is first/second player) & store at data

  },
  // computed: () => ({

  // }),
  data: () => {
    return {
      bombList: [
        {
          id: "0",
          isSelected: false,
        },
        {id: "1", isSelected: false},
        {id: "2", isSelected: false},
        {id: "3", isSelected: false},
        {id: "4", isSelected: false},
        {id: "5", isSelected: false},
        {id: "6", isSelected: false},
        {id: "7", isSelected: false},
        {id: "8", isSelected: false},
      ]
    };
  },
  methods: {
    // TODO: load room information when page loading
    // joinRoom() {}
    hitGrid(grid){
      // set as button by css or js
      grid.isSelected = !grid.isSelected;
      //? refact as computed
    },
    submitRequest(){
      this.setProv();
      //TODO: and send Txn
    },
    async setProv() {
      // ? typeof web3 !== ‘undefined’   need to be check?
      if (window.ethereum) {

        // ? miss this one??? is this line correct the missing var(ethereum) issue?
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

<style scoped>
.game-room {
  height: 30vh;
}
#play-ground {
  display: flex;
flex-wrap: wrap;
  width: 242px;
  /* width: 15em; */
  margin: auto;
  border: 1px solid rgb(219, 35, 35);
}
.grid {
  /* display: inline-block; */
  width:  5em;
  height: 5em;
  border: 1px solid rgb(219, 35, 35);
}
.isSelected{
  background-color: greenyellow;
}
</style>
