<script>
  // @ts-nocheck

  let { data } = $props();
</script>

<nav class="navbar">
  <div class="navbar-container">
    <ul class="nav-items">
      {#each data as { name, href }}
        <li><a {href} class="nav-link">{name}</a></li>
      {/each}
    </ul>
  </div>
</nav>

<style>
  .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem;
    background-color: #333;
    color: white;
  }

  .navbar-container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .logo {
    font-size: 1.5rem;
    font-weight: bold;
    text-decoration: none;
    color: white;
  }

  .nav-items {
    list-style: none;
    display: flex;
    gap: 1rem;
  }

  .nav-link {
    text-decoration: none;
    color: white;
    transition: color 0.3s ease;
  }

  .nav-link:hover {
    color: #00bcd4;
  }
</style>
