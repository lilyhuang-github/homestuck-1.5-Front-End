<script lang="ts">
  import { error } from '@sveltejs/kit';
  import type { PageData } from './$types';
  import { onMount } from 'svelte';
  import Navbar from '../../components/Navbar.svelte';
  let hsCharacters: any = $state();
  onMount(async () => {
    hsCharacters = await fetch(
      'https://homestuck-1-5-352988256386.us-central1.run.app/api/available'
    )
      .then((response) => response.json())
      .then((data) => {
        return data;
      })
      .catch((error) => {
        console.log(error);
        return [];
      });
    hsCharacters = Object.entries(hsCharacters);
  });
  let count = $state(1);
  function increment() {
    count += 1;
  }
  function decrement() {
    count -= 1;
  }
  const cRange = $derived(Array.from({ length: count }, (_, i) => i + 1));
  let components: any = [];
  function addcomponent() {
    components = [...components, {}];
  }
</script>

{console.log(hsCharacters)}
<Navbar
  data={[
    { name: 'Single Character Dialogue', href: '/ngram/single' },
    { name: 'Two character dialogue', href: '/ngram/duo' },
    { name: 'Multi character dialogue', href: '/ngram/multi' },
  ]}
/>
<!-- <div class="container">
  {#each cRange as x}
    <select name="characters" id="characters">
      <option disabled selected value> -- select an option -- </option>
      {#each hsCharacters as [k, v]}
        <option value={k}>{k}({v} )</option>
      {/each}
    </select>
  {/each}
</div> -->
<!-- {#each cRange as x}
  {x}
{/each} -->
<!-- <button onclick={increment}>Add new character</button>
<button onclick={decrement}>Remove character</button>
<button>Create dialogue</button> -->

<p>TESTING API</p>
