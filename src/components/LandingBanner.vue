<template>
  <div class="landing-banner">
    <img src="@/assets/logo.png" alt="miner img">
    <h1>{{ msg }}</h1>
    <button>Start</button>
  </div>
</template>

<script>
export default {
  name: "landing-banner",
  props: {
    msg: String
  }
}
</script>

<style  scoped>

.landing-banner {
  /* margin: auto; */
  height: 30vh;
  /* height: 80vh; */
  background-color: rgba(83, 125, 238, 0.87);
}
</style>

