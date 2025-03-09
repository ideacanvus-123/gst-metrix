const flowbite = require("flowbite-react/tailwind");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
 
    // Or if using `src` directory:
    "./src/**/*.{js,ts,jsx,tsx,mdx}",
    flowbite.content(),
  ],
  theme: {
    colors: {
      primary: '#0C3C4A',
      secondary: '#0F0500',
      button: '#A084E8',
     
    },

    border:"border-border",
    
    extend: {},
  },
  plugins: [
    // ...
    flowbite.plugin(),
  ],
};


