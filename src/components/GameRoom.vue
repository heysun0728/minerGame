<template>
  <div class="game-room" id="gm">
    <h1>{{ msg }}</h1>
    <!-- <div @click="">start</div> -->
    <table id="roomList">
      <thead>
        <tr>
          <th>ID</th>
          <th>bets</th>
          <th>comments</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for:="value in rooms" >
          <td>{{ value.id }}</td>
          <td>{{ value.bets }}</td>
          <td>{{ value.comments }}</td>
          <td>
            <button @click="joinRoom(value.id)">join</button>
          </td>
        </tr>
      </tbody>
    </table>or
    <button>Create a Room</button>
  </div>
</template>

<script>
export default {
  name: "game-room",
  props: {
    msg: String
  },
  created: () => {
    // fetch data from contract & store in value @ instant create
  },
  data: () => {
    return {
      rooms: [],
      value: {
        // demo use, fetched data from contract
        id: "1",
        bets: "2",
        comments: "sdsdsd"
      }
    };
  },
  methods: {
    // TODO: load room information when page loading
    joinRoom: () => {
      // turn to the playing page where user wanna join
    }
    // showRoom: bet => {
      // TODO: update data: room with same bet
    // }
  }
};
</script>

<style scoped>
.game-room {
  height: 80vh;
  background-color: aqua;
}
#roomList {
  margin: auto;
  border: 3px solid purple;
}
h1 {
  margin: auto 20vh;
}
</style>
