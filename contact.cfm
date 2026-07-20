<!DOCTYPE html>
<html lang="en" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Contact Mako Wusstig about freelance landing pages, website updates, and project collaborations.">
  <title>Contact | Mako Wusstig</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/mobile.css">
</head>

<body class="min-h-screen text-slate-100 transition-colors duration-300" data-theme="dark">
  <!-- Holds the entire Contact page -->
  <div class="relative isolate min-h-screen overflow-hidden">
    <!-- Creates the colored glow in the page background -->
    <div class="absolute inset-0 -z-10 bg-[radial-gradient(circle_at_top_left,_rgba(34,211,238,0.18),_transparent_35%),radial-gradient(circle_at_bottom_right,_rgba(168,85,247,0.18),_transparent_30%)]"></div>

    <!-- Navigation bar -->
    <header class="mx-auto flex max-w-7xl items-center justify-between px-6 py-6 lg:px-8">
      <a href="/" class="text-xl font-semibold tracking-[0.2em] text-slate-50 uppercase">Mako Wusstig</a>

      <div class="flex items-center gap-3">
        <nav class="hidden items-center gap-6 text-sm font-medium text-slate-300 md:flex" aria-label="Main navigation">
          <a class="transition hover:text-cyan-300" href="/about.cfm">About</a>
          <a class="transition hover:text-cyan-300" href="/projects.cfm">Projects</a>
          <a class="text-cyan-300" href="/contact.cfm" aria-current="page">Contact</a>
        </nav>

        <!-- contact.js uses this button to change the page theme -->
        <button id="theme-toggle" type="button" class="rounded-full border border-white/15 bg-white/10 px-3 py-2 text-sm font-medium text-slate-100 shadow-lg backdrop-blur transition hover:bg-white/20" aria-label="Switch to light mode">
          ☀️
        </button>
      </div>
    </header>

    <!-- Mobile navigation stays visible when the desktop navigation is hidden -->
    <nav class="mobile-navigation" aria-label="Mobile navigation">
      <a class="transition hover:text-cyan-300" href="/about.cfm">About</a>
      <a class="transition hover:text-cyan-300" href="/projects.cfm">Projects</a>
      <a class="text-cyan-300" href="/contact.cfm" aria-current="page">Contact</a>
    </nav>

    <!-- Main content becomes two columns on larger screens -->
    <main class="mx-auto grid max-w-7xl gap-12 px-6 py-14 lg:grid-cols-[0.85fr_1.15fr] lg:items-start lg:px-8 lg:py-20">
      <!-- Information about freelance work and collaboration -->
      <section class="max-w-xl">
        <p class="text-sm font-semibold uppercase tracking-[0.35em] text-cyan-400">Let’s Work Together</p>
        <h1 class="mt-4 text-4xl font-semibold leading-tight text-slate-50 sm:text-5xl lg:text-6xl">
          Have an idea? Let’s bring it to life.
        </h1>
        <p class="mt-6 text-lg leading-8 text-slate-300">
          If you need a responsive landing page or want to give your current website a fresh update, tell me what you have in mind. I’d love to learn about your goals and explore how I can help.
        </p>

        <div class="mt-8 rounded-2xl border border-white/10 bg-white/10 p-5 backdrop-blur">
          <p class="font-semibold text-slate-50">Open to collaboration, too.</p>
          <p class="mt-2 text-sm leading-6 text-slate-300">
            I’m also interested in collaborating with other developers and creators on projects that offer a chance to share ideas, solve problems, and grow together.
          </p>
        </div>
      </section>

      <!-- Contact form where a visitor can explain what they want to build -->
      <section class="rounded-3xl border border-white/10 bg-slate-900/70 p-6 shadow-2xl shadow-black/20 backdrop-blur-xl sm:p-8" aria-labelledby="inquiry-title">
        <div>
          <p class="text-sm font-semibold uppercase tracking-[0.25em] text-cyan-400">Project Inquiry</p>
          <h2 id="inquiry-title" class="mt-2 text-2xl font-semibold text-slate-50">Tell me what you’re looking to build.</h2>
          <p class="mt-2 text-sm leading-6 text-slate-300">Share as much detail as you can, and I’ll have the context I need to understand your idea.</p>
        </div>

        <!-- These fields collect the visitor's contact and project information -->
        <form class="mt-8 space-y-5" id="contact-form" method="post">
          <div class="grid gap-5 sm:grid-cols-2">
            <div>
              <label for="name" class="text-sm font-medium text-slate-100">Name</label>
              <input id="name" name="name" type="text" autocomplete="name" required class="mt-2 w-full rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-100 outline-none transition placeholder:text-slate-400 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20" placeholder="Your name">
            </div>

            <div>
              <label for="phone" class="text-sm font-medium text-slate-100">Phone number</label>
              <input id="phone" name="phone" type="tel" autocomplete="tel" class="mt-2 w-full rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-100 outline-none transition placeholder:text-slate-400 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20" placeholder="(555) 123-4567">
            </div>
          </div>

          <div>
            <label for="email" class="text-sm font-medium text-slate-100">Email address</label>
            <input id="email" name="email" type="email" autocomplete="email" required class="mt-2 w-full rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-100 outline-none transition placeholder:text-slate-400 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20" placeholder="you@example.com">
          </div>

          <div>
            <label for="message" class="text-sm font-medium text-slate-100">What would you like to build?</label>
            <textarea id="message" name="message" rows="6" required class="mt-2 w-full resize-y rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-100 outline-none transition placeholder:text-slate-400 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20" placeholder="Tell me about your landing page, website update, or collaboration idea..."></textarea>
          </div>

          <button type="submit" class="w-full rounded-full bg-cyan-500 px-6 py-3 text-sm font-semibold text-slate-950 shadow-lg shadow-cyan-500/20 transition hover:bg-cyan-400 focus:outline-none focus:ring-2 focus:ring-cyan-300 focus:ring-offset-2 focus:ring-offset-slate-900 sm:w-auto">
            Send Inquiry
          </button>
        </form>
      </section>
    </main>
  </div>

  <!-- Loads the JavaScript that controls the Contact page -->
  <script src="/js/contact.js"></script>
</body>
</html>
