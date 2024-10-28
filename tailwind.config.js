/** @type {import('tailwindcss').Config} */
// Credit for Homestuck colours: https://balentay.tumblr.com/homestuckcolors
export default {
  content: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {
      colors:{
        'john-egbert': '#0715cd',
        'nannasprite': '#00d5f2',
        'rose-lalonde': '#b536da',
        'jaspersprite': '#f141ef',
        'dave-strider': '#e00707',
        'davesprite': '#f2a400',
        'jade-harley': '#4ac925',
        'jadesprite': '#1f9400',
        'jane-crocker': '#00d5f2',
        'tavrisprite': '#0715cd',
        'dirk-strider': '#f2a400',
        'autoresponder': '#e00707',
        'arquiusprite': '#e00707',
        'squarewave': '#ff0000',
        'roxy-lalonde': '#ff6ff2',
        'trickster-bg': '#fbbaff',
        'fefetasprite': '#b536da',
        'jake-english': '#1f9400',
        'erisolsprite': '#4ac925',
        'karkat-vantas': '#626262',
        'red-text': '#ff0000',
        'aradia-megido': '#a10000',
        'aradiabot': '#a10000',
        'dreambubble': '#000056',
        'ministrife': '#0022cf',
        'tavros-nitram': '#a15000',
        'sollux-captor': '#a1a100',
        'nepeta-leijon': '#416600',
        'kanaya-maryam': '#008141',
        'mothersprite': '#008141',
        'terezi-pyrope': '#008282',
        'dragonsprite': '#008282',
        'vriska-serket': '#005682',
        'mindfang': '#005682',
        'equius-zahhak': '#000056',
        'gamzee-makara': '#2b0057',
        'scratch-interlude': '#4200b0',
        'openbound-part-2': '#6c00da',
        'eridan-ampora': '#6a006a',
        'feferi-peixes': '#77003c',
        'kankri-vantas': '#ff0000',
        'damara-megido': '#a10000',
        'rufioh-nitram': '#a15000',
        'mituna-captor': '#a1a100',
        'meulin-leijon': '#416600',
        'porrim-maryam': '#008141',
        'latula-pyrope': '#008282',
        'aranea-serket': '#005682',
        'horuss-zahhak': '#2b0057',
        'minstrife-line-1': '#0021cb',
        'minstrife-line-2': '#0022cf',
        'kurloz-makara': '#6c00da',
        'cronus-ampora': '#6a006a',
        'meenah-peixes': '#77003c',
        'doc-scratch': '#ffffff',
        'uranian-umbra': '#929292',
        'undying-umbrage': '#323232',
        'caliborn': '#2ed73a',
        'er-imperious-condescension': '#77003c',
      },
      fontFamily:{
        hs:['homestuck', 'sans-serif']
      }
    },
  },
  plugins: [],
}

