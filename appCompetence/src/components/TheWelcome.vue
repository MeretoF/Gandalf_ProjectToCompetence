<script setup lang="ts">
import Grid from '../components/Grid.vue'
</script>

<template>
  <div class="flexRow">
    <Grid />
  </div>
</template>

<style scoped>
.flexRow {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  width: 100%;
  height: 100%;
}
</style>