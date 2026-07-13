// Gets the theme button from about.html so JavaScript can control it
const themeToggleButton = document.getElementById('theme-toggle');

// Changes the About page theme and updates the theme button
function applyTheme(selectedTheme) {
  // Adds the selected theme to the body so style.css knows which colors to use
  document.body.setAttribute('data-theme', selectedTheme);

  // Saves the theme in the browser so it stays the same when moving between pages
  localStorage.setItem('theme', selectedTheme);

  // Only updates the button if JavaScript found it in about.html
  if (themeToggleButton) {
    if (selectedTheme === 'dark') {
      // The sun shows that clicking the button will switch to light mode
      themeToggleButton.innerHTML = '☀️';
      themeToggleButton.setAttribute('aria-label', 'Switch to light mode');
    } else {
      // The moon shows that clicking the button will switch to dark mode
      themeToggleButton.innerHTML = '🌙';
      themeToggleButton.setAttribute('aria-label', 'Switch to dark mode');
    }
  }
}

// Gets the theme that was saved on this website during the visitor's last visit
const savedTheme = localStorage.getItem('theme');

// Checks whether the visitor's device is currently using light mode
const deviceUsesLightMode = window.matchMedia('(prefers-color-scheme: light)').matches;

// This variable will hold the theme that should be used when the page loads
let startingTheme;

if (savedTheme) {
  // Uses the visitor's saved choice before checking their device setting
  startingTheme = savedTheme;
} else if (deviceUsesLightMode) {
  startingTheme = 'light';
} else {
  startingTheme = 'dark';
}

// Applies the correct theme as soon as the About page loads
applyTheme(startingTheme);

// Only adds the click event if the theme button exists on the page
if (themeToggleButton) {
  themeToggleButton.addEventListener('click', function () {
    // Reads the current theme from the data-theme attribute on the body
    const currentTheme = document.body.getAttribute('data-theme');
    let nextTheme;

    if (currentTheme === 'dark') {
      nextTheme = 'light';
    } else {
      nextTheme = 'dark';
    }

    // Applies the opposite theme after the button is clicked
    applyTheme(nextTheme);
  });
}
