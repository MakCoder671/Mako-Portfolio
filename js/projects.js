// Gets the theme button from projects.html so JavaScript can control it
const themeToggleButton = document.getElementById('theme-toggle');

// Changes the Projects page theme and updates the theme button
function applyTheme(selectedTheme) {
  // Adds the selected theme to the body so style.css knows which colors to use
  document.body.setAttribute('data-theme', selectedTheme);

  // Saves the theme in the browser so it stays the same when moving between pages
  localStorage.setItem('theme', selectedTheme);

  // Only updates the button if JavaScript found it in projects.html
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

// Applies the correct theme as soon as the Projects page loads
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

// Gets every screenshot gallery from the Projects page.
const projectGalleries = document.querySelectorAll('.project-gallery');

// Sets up the buttons and dots inside each screenshot gallery.
projectGalleries.forEach(function (projectGallery) {
  const galleryImages = projectGallery.querySelectorAll('.project-gallery-image');
  const galleryDots = projectGallery.querySelectorAll('.project-gallery-dot');
  const previousImageButton = projectGallery.querySelector('.project-gallery-previous');
  const nextImageButton = projectGallery.querySelector('.project-gallery-next');
  let currentImageIndex = 0;

  // Shows one screenshot and hides the screenshots that are not selected.
  function showGalleryImage(selectedImageIndex) {
    galleryImages.forEach(function (galleryImage, imageIndex) {
      if (imageIndex === selectedImageIndex) {
        galleryImage.classList.add('project-gallery-image-active');
      } else {
        galleryImage.classList.remove('project-gallery-image-active');
      }
    });

    galleryDots.forEach(function (galleryDot, dotIndex) {
      if (dotIndex === selectedImageIndex) {
        galleryDot.classList.add('project-gallery-dot-active');
        galleryDot.setAttribute('aria-current', 'true');
      } else {
        galleryDot.classList.remove('project-gallery-dot-active');
        galleryDot.removeAttribute('aria-current');
      }
    });

    currentImageIndex = selectedImageIndex;
  }

  // Only connects the back arrow when that button exists in this gallery.
  if (previousImageButton) {
    previousImageButton.addEventListener('click', function () {
      let previousImageIndex = currentImageIndex - 1;

      if (previousImageIndex < 0) {
        previousImageIndex = galleryImages.length - 1;
      }

      showGalleryImage(previousImageIndex);
    });
  }

  // Only connects the next arrow when that button exists in this gallery.
  if (nextImageButton) {
    nextImageButton.addEventListener('click', function () {
      let nextImageIndex = currentImageIndex + 1;

      if (nextImageIndex >= galleryImages.length) {
        nextImageIndex = 0;
      }

      showGalleryImage(nextImageIndex);
    });
  }

  // Lets a visitor choose a screenshot by clicking its matching dot.
  galleryDots.forEach(function (galleryDot, dotIndex) {
    galleryDot.addEventListener('click', function () {
      showGalleryImage(dotIndex);
    });
  });

  // Starts every gallery on its first screenshot when the page opens.
  showGalleryImage(0);
});
