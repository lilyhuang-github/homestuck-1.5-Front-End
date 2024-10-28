<script>
    export let title = "My App";  // Example prop for customization
  import TopButtonNav from "../components/topButtonNav.svelte";
    import topButtonNav from "../components/topButtonNav.svelte";
  </script>
 

<nav class="bg-gray-950 text-gray-200 fixed w-full z-20 top-0 start-0 border-b border-gray-700 shadow-lg">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto px-6 py-4">
        <a href="/" class="flex items-center space-x-3 rtl:space-x-reverse">
            <img src="logo.png" class="h-14 rounded-full border border-gray-600" alt="App logo (Crudely drawn Vriska Serket)">
            <span class="self-center text-2xl font-hs whitespace-nowrap text-caliborn hover:text-cyan-500 transition-colors duration-300">
                Homestuck 1.5
            </span>
        </a>
        
        <div class="items-center hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
            <ul class="flex flex-row space-x-6 p-0 font-medium">

                <TopButtonNav words="Ngram" link="/ngram" />
                <TopButtonNav words="About" link="/about" />
                
            </ul>
        </div>
    </div>
</nav>