<script>
  import { onMount } from 'svelte';
  let hsCharacters = $state();
  let message = $state();
  let selected = $state();
  let selectable = $derived(selected == true);
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
  let apiCall = async (/** @type {string} */ character) => {
    let responseMessage = '';
    try {
      const response = await fetch(
        `https://homestuck-1-5-352988256386.us-central1.run.app/api/get1dialogue/${character}`
      );
      if (!response.ok) {
        message = `Error: ${response.status} ${response.statusText}`;
        throw new Error(`Error: ${response.status} ${response.statusText}`);
      }
      const data = await response.json();
      message = data;
    } catch (err) {
      responseMessage = `Failed: ${err}`;
    }
  };
</script>

<select name="characters" id="characters" bind:value={selected}>
  <option disabled selected value> -- select an option -- </option>
  {#each hsCharacters as [k, v]}
    <option value={k}>{k}({v} )</option>
  {/each}
</select>
<button disabled={selectable} onclick={() => apiCall(selected)}>Submit</button>
{message}
