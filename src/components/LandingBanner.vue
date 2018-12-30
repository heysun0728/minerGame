<template>
  <div class="landing-banner">
    <h1>Do U wanna Play a Game?</h1>
    <div id="landing-play-button" @click="()=>{window.location = '#gm'}">PLAY!</div>
    <a href="#gm">Play</a>
  </div>
</template>

<script>
export default {
  name: "landing-banner",
  props: {}
}
</script>

<style  scoped>
.landing-banner {
  /* margin: auto; */
  height: 80vh;
  background-color: bisque;
}
#landing-play-button {
  border: solid 2px;
  margin: 20px auto;
  padding: 50px;
  width: 10em;
}
</style>

