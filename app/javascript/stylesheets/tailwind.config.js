const colors = require("tailwindcss/colors");

module.exports = {
  // TODO: Re-enable this
  // purge: [
  //   "./app/**/*.html.erb",
  //   "./app/helpers/**/*.rb",
  //   "./app/javascript/**/*.js",
  //   "./app/javascript/**/*.vue",
  // ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      transparent: "transparent",
      current: "currentColor",
      black: colors.black,
      white: colors.white,
      gray: colors.trueGray,
      indigo: colors.indigo,
      red: colors.rose,
      yellow: colors.amber,
    },
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
