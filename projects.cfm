<!DOCTYPE html>
<html lang="en" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Explore web development projects created by Mako Wusstig.">
  <title>Projects | Mako Wusstig</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <link rel="stylesheet" href="/css/style.css?v=3">
  <link rel="stylesheet" href="/css/mobile.css">
</head>

<body class="min-h-screen text-slate-100 transition-colors duration-300" data-theme="dark">
  <!-- Holds the entire Projects page -->
  <div class="relative isolate min-h-screen overflow-hidden">
    <!-- Creates the grid and colored glow in the page background -->
    <div class="absolute inset-0 -z-10 bg-[linear-gradient(rgba(15,23,42,0.16)_1px,transparent_1px),linear-gradient(90deg,rgba(15,23,42,0.16)_1px,transparent_1px),radial-gradient(circle_at_top_left,_rgba(34,211,238,0.18),_transparent_35%),radial-gradient(circle_at_bottom_right,_rgba(168,85,247,0.18),_transparent_30%)] bg-[size:42px_42px,42px_42px,auto,auto]"></div>

    <!-- Navigation bar -->
    <header class="mx-auto flex max-w-7xl items-center justify-between px-6 py-6 lg:px-8">
      <a href="/" class="text-xl font-semibold tracking-[0.2em] text-slate-50 uppercase">Mako Wusstig</a>

      <div class="flex items-center gap-3">
        <nav class="hidden items-center gap-6 text-sm font-medium text-slate-300 md:flex" aria-label="Main navigation">
          <a class="transition hover:text-cyan-300" href="/about.cfm">About</a>
          <a class="text-cyan-300" href="/projects.cfm" aria-current="page">Projects</a>
          <a class="transition hover:text-cyan-300" href="/contact.cfm">Contact</a>
        </nav>

        <!-- projects.js uses this button to change the page theme -->
        <button id="theme-toggle" type="button" class="rounded-full border border-white/15 bg-white/10 px-3 py-2 text-sm font-medium text-slate-100 shadow-lg backdrop-blur transition hover:bg-white/20" aria-label="Switch to light mode">
          ☀️
        </button>
      </div>
    </header>

    <!-- Mobile navigation stays visible when the desktop navigation is hidden -->
    <nav class="mobile-navigation" aria-label="Mobile navigation">
      <a class="transition hover:text-cyan-300" href="/about.cfm">About</a>
      <a class="text-cyan-300" href="/projects.cfm" aria-current="page">Projects</a>
      <a class="transition hover:text-cyan-300" href="/contact.cfm">Contact</a>
    </nav>

    <!-- Main Projects page content -->
    <main class="mx-auto max-w-7xl px-6 py-14 lg:px-8 lg:py-20">
      <!-- Page introduction and project progress bar -->
      <section class="mx-auto max-w-3xl text-center">
        <p class="text-sm font-semibold uppercase tracking-[0.35em] text-cyan-400">Project Select</p>
        <h1 class="mt-4 text-4xl font-semibold leading-tight text-slate-50 sm:text-5xl lg:text-6xl">Choose a build to explore.</h1>
        <p class="mx-auto mt-6 max-w-2xl text-lg leading-8 text-slate-300">
          A growing collection of responsive experiences built through curiosity, practice, and a love for learning new tools.
        </p>
        <div class="mx-auto mt-8 flex max-w-md items-center gap-3" aria-label="Portfolio progress">
          <span class="text-xs font-semibold uppercase tracking-widest text-slate-300">Build progress</span>
          <div class="h-2 flex-1 overflow-hidden rounded-full bg-white/10">
            <div class="project-progress h-full w-full rounded-full bg-gradient-to-r from-cyan-400 to-purple-500"></div>
          </div>
          <span class="text-xs font-semibold text-cyan-300">3 / 3</span>
        </div>
      </section>

      <!-- These are the cards for each project -->
      <section class="mt-14 grid gap-7 md:grid-cols-2 xl:grid-cols-3" aria-label="Project gallery">
        <!-- First project card shows the portfolio that is currently being built -->
        <article class="project-card group overflow-hidden rounded-3xl border border-cyan-400/30 bg-slate-900/80 shadow-2xl shadow-cyan-950/20 backdrop-blur-xl" style="--card-delay: 0ms;">
          <!-- This gallery lets visitors look through three screenshots from the portfolio -->
          <div class="project-gallery relative aspect-[16/10] overflow-hidden border-b border-white/10 bg-slate-950" aria-label="Mako Portfolio screenshots">
            <div class="project-gallery-slides h-full">
              <img src="/assets/projects/mako-portfolio-home.png" alt="Mako Portfolio Home page" class="project-gallery-image project-gallery-image-active h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/mako-portfolio-projects.png" alt="Mako Portfolio Projects page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/mako-portfolio-contact.png" alt="Mako Portfolio Contact page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
            </div>

            <button type="button" class="project-gallery-previous absolute left-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show previous Mako Portfolio screenshot">←</button>
            <button type="button" class="project-gallery-next absolute right-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show next Mako Portfolio screenshot">→</button>

            <!-- Each dot shows which screenshot is currently selected -->
            <div class="project-gallery-dots absolute bottom-3 left-1/2 z-20 flex -translate-x-1/2 gap-2 rounded-full bg-slate-950/80 px-3 py-2 backdrop-blur">
              <button type="button" class="project-gallery-dot project-gallery-dot-active" aria-label="Show Home page screenshot" aria-current="true"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Projects page screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Contact page screenshot"></button>
            </div>

            <span class="absolute right-4 top-4 z-10 rounded-full border border-cyan-300/30 bg-slate-950/80 px-3 py-1 text-xs font-bold uppercase tracking-widest text-cyan-300">Backend in Production</span>
          </div>

          <div class="p-6">
            <div class="flex items-start justify-between gap-4">
              <div>
                <p class="text-xs font-bold uppercase tracking-[0.25em] text-cyan-400">Level 01</p>
                <h2 class="mt-2 text-2xl font-semibold text-slate-50">Mako Portfolio</h2>
              </div>
              <span class="rounded-lg border border-amber-300/20 bg-amber-300/10 px-2.5 py-1 text-xs font-bold text-amber-300">+100 XP</span>
            </div>

            <p class="mt-4 text-sm leading-6 text-slate-300">
              A personal portfolio designed to introduce my story, present my growing body of work, and make it easy for clients and collaborators to connect.
            </p>

            <div class="mt-5 flex flex-wrap gap-2" aria-label="Tools used">
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">CFML</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Tailwind CSS</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">JavaScript</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Lucee</span>
            </div>

            <div class="mt-6 flex items-center gap-3 border-t border-white/10 pt-5">
              <a href="/" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-cyan-400/30 bg-cyan-400/10 text-cyan-300 transition hover:-translate-y-1 hover:bg-cyan-400/20" aria-label="View Mako Portfolio live" title="View live project">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 3h7v7"/><path d="M10 14 21 3"/><path d="M21 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5"/></svg>
              </a>
              <a href="https://github.com/MakCoder671/Mako-Portfolio" target="_blank" rel="noopener noreferrer" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-white/15 bg-white/5 text-slate-300 transition hover:-translate-y-1 hover:bg-white/10" aria-label="View Mako Portfolio source code" title="View source code">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m8 9-5 3 5 3"/><path d="m16 9 5 3-5 3"/><path d="m14 5-4 14"/></svg>
              </a>
              <span class="ml-auto text-xs font-medium text-slate-400">Live demo · Source</span>
            </div>
          </div>
        </article>

        <!-- Evergreen Outdoor Living project card -->
        <article class="project-card group overflow-hidden rounded-3xl border border-emerald-400/25 bg-slate-900/80 shadow-2xl shadow-emerald-950/20 backdrop-blur-xl" style="--card-delay: 120ms;">
          <div class="project-gallery relative aspect-[16/10] overflow-hidden border-b border-white/10 bg-slate-950" aria-label="Evergreen Outdoor Living screenshots">
            <div class="project-gallery-slides h-full">
              <img src="/assets/projects/evergreen-home.png" alt="Evergreen Outdoor Living Home page" class="project-gallery-image project-gallery-image-active h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/evergreen-services.png" alt="Evergreen Outdoor Living Services page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/evergreen-about.png" alt="Evergreen Outdoor Living About page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/evergreen-contact.png" alt="Evergreen Outdoor Living project inquiry page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/evergreen-estimate.png" alt="Evergreen Outdoor Living free estimate page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
            </div>
            <button type="button" class="project-gallery-previous absolute left-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show previous Evergreen screenshot">←</button>
            <button type="button" class="project-gallery-next absolute right-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show next Evergreen screenshot">→</button>
            <div class="project-gallery-dots absolute bottom-3 left-1/2 z-20 flex -translate-x-1/2 gap-2 rounded-full bg-slate-950/80 px-3 py-2 backdrop-blur">
              <button type="button" class="project-gallery-dot project-gallery-dot-active" aria-label="Show Evergreen Home screenshot" aria-current="true"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Evergreen Services screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Evergreen About screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Evergreen inquiry screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Evergreen estimate screenshot"></button>
            </div>
          </div>
          <div class="p-6">
            <div class="flex items-start justify-between gap-4">
              <div>
                <p class="text-xs font-bold uppercase tracking-[0.25em] text-emerald-400">Level 02</p>
                <h2 class="mt-2 text-2xl font-semibold text-slate-50">Evergreen Outdoor Living</h2>
              </div>
              <span class="rounded-lg border border-amber-300/20 bg-amber-300/10 px-2.5 py-1 text-xs font-bold text-amber-300">+200 XP</span>
            </div>
            <p class="mt-4 text-sm leading-6 text-slate-300">A responsive service-business website that guides homeowners through landscaping services and makes requesting a free project estimate simple.</p>
            <div class="mt-5 flex flex-wrap gap-2" aria-label="Tools used">
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">HTML</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Tailwind CSS</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">JavaScript</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Playwright</span>
            </div>
            <div class="mt-6 flex items-center gap-3 border-t border-white/10 pt-5">
              <a href="https://makcoder671.github.io/evergreen-outdoor-living/" target="_blank" rel="noopener noreferrer" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-emerald-400/30 bg-emerald-400/10 text-emerald-300 transition hover:-translate-y-1 hover:bg-emerald-400/20" aria-label="View Evergreen Outdoor Living live" title="View live project">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 3h7v7"/><path d="M10 14 21 3"/><path d="M21 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5"/></svg>
              </a>
              <a href="https://github.com/MakCoder671/evergreen-outdoor-living" target="_blank" rel="noopener noreferrer" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-white/15 bg-white/5 text-slate-300 transition hover:-translate-y-1 hover:bg-white/10" aria-label="View Evergreen Outdoor Living source code" title="View source code">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m8 9-5 3 5 3"/><path d="m16 9 5 3-5 3"/><path d="m14 5-4 14"/></svg>
              </a>
              <span class="ml-auto text-xs font-medium text-slate-400">Live demo · Source</span>
            </div>
          </div>
        </article>

        <!-- Ember and Moss project card -->
        <article class="project-card group overflow-hidden rounded-3xl border border-amber-400/25 bg-slate-900/80 shadow-2xl shadow-amber-950/20 backdrop-blur-xl md:col-span-2 xl:col-span-1" style="--card-delay: 240ms;">
          <div class="project-gallery relative aspect-[16/10] overflow-hidden border-b border-white/10 bg-slate-950" aria-label="Ember and Moss screenshots">
            <div class="project-gallery-slides h-full">
              <img src="/assets/projects/ember-home.png" alt="Ember and Moss Home page" class="project-gallery-image project-gallery-image-active h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/ember-collections.png" alt="Ember and Moss collections page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/ember-products.png" alt="Ember and Moss product listing page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/ember-cart.png" alt="Ember and Moss shopping cart" class="project-gallery-image h-full w-full object-contain" loading="lazy">
              <img src="/assets/projects/ember-checkout.png" alt="Ember and Moss checkout page" class="project-gallery-image h-full w-full object-contain" loading="lazy">
            </div>
            <button type="button" class="project-gallery-previous absolute left-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show previous Ember and Moss screenshot">←</button>
            <button type="button" class="project-gallery-next absolute right-3 top-1/2 z-20 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full border border-white/15 bg-slate-950/80 text-lg text-slate-100 backdrop-blur transition hover:bg-slate-800" aria-label="Show next Ember and Moss screenshot">→</button>
            <div class="project-gallery-dots absolute bottom-3 left-1/2 z-20 flex -translate-x-1/2 gap-2 rounded-full bg-slate-950/80 px-3 py-2 backdrop-blur">
              <button type="button" class="project-gallery-dot project-gallery-dot-active" aria-label="Show Ember and Moss Home screenshot" aria-current="true"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Ember and Moss collections screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Ember and Moss products screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Ember and Moss cart screenshot"></button>
              <button type="button" class="project-gallery-dot" aria-label="Show Ember and Moss checkout screenshot"></button>
            </div>
          </div>
          <div class="p-6">
            <div class="flex items-start justify-between gap-4">
              <div>
                <p class="text-xs font-bold uppercase tracking-[0.25em] text-amber-400">Level 03</p>
                <h2 class="mt-2 text-2xl font-semibold text-slate-50">Ember &amp; Moss</h2>
              </div>
              <span class="rounded-lg border border-amber-300/20 bg-amber-300/10 px-2.5 py-1 text-xs font-bold text-amber-300">+300 XP</span>
            </div>
            <p class="mt-4 text-sm leading-6 text-slate-300">A responsive e-commerce storefront demonstrating product discovery, filtering, an interactive cart, shipping choices, and a polished checkout flow.</p>
            <div class="mt-5 flex flex-wrap gap-2" aria-label="Tools used">
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">HTML</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Tailwind CSS</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">JavaScript</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">localStorage</span>
              <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs font-medium text-slate-300">Playwright</span>
            </div>
            <div class="mt-6 flex items-center gap-3 border-t border-white/10 pt-5">
              <a href="https://makcoder671.github.io/Ember-Moss-E-Commerce-Store/home.html" target="_blank" rel="noopener noreferrer" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-amber-400/30 bg-amber-400/10 text-amber-300 transition hover:-translate-y-1 hover:bg-amber-400/20" aria-label="View Ember and Moss live" title="View live project">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 3h7v7"/><path d="M10 14 21 3"/><path d="M21 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5"/></svg>
              </a>
              <a href="https://github.com/MakCoder671/Ember-Moss-E-Commerce-Store" target="_blank" rel="noopener noreferrer" class="project-action inline-flex h-11 w-11 items-center justify-center rounded-full border border-white/15 bg-white/5 text-slate-300 transition hover:-translate-y-1 hover:bg-white/10" aria-label="View Ember and Moss source code" title="View source code">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m8 9-5 3 5 3"/><path d="m16 9 5 3-5 3"/><path d="m14 5-4 14"/></svg>
              </a>
              <span class="ml-auto text-xs font-medium text-slate-400">Live demo · Source</span>
            </div>
          </div>
        </article>
      </section>
    </main>
  </div>

  <!-- Loads the JavaScript that controls the Projects page -->
  <script src="/js/projects.js?v=3"></script>
</body>
</html>
