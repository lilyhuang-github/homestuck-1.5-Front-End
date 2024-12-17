<script>
  export let options: any = []; // List of options to display
  export let selectedValue = ''; // Pre-selected value (optional)
  export let placeholder = '-- select an option --'; // Default placeholder text

  function handleChange(event) {
    // Emit the selected value back to the parent
    selectedValue = event.target.value;
    dispatch('change', selectedValue);
  }

  import { createEventDispatcher } from 'svelte';
  const dispatch = createEventDispatcher();
</script>

<select
  name="characters"
  id="characters"
  bind:value={selectedValue}
  on:change={handleChange}
>
  <!-- Placeholder option -->
  <option disabled selected value="">{placeholder}</option>

  <!-- Dynamic options -->
  {#each options as [key, value]}
    <option {value}>{value}</option>
  {/each}
</select>
