const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        // sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      boxShadow: {
        'soft': '-0.2rem 0.2rem 1rem rgba(0, 0, 0, 0.1)',
        'softer': '-0.4rem 0.4rem 2rem rgba(0, 0, 0, 0.1)',
      },
      keyframes: {
        dissolve: {
          '0%, 100%': { opacity: '0' },
          '5%, 60%': { opacity: '1' },
        }
      },
      animation: {
        dissolve: 'dissolve 7s 300ms both',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}