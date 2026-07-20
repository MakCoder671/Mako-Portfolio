<!DOCTYPE html>
<html lang="en" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="robots" content="noindex, nofollow">
  <title>Admin Login | Mako Portfolio</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/mobile.css">
</head>

<body class="min-h-screen text-slate-100" data-theme="dark">
  <!-- Keeps the login centered and uses the same background colors as the portfolio -->
  <main class="relative isolate flex min-h-screen items-center justify-center overflow-hidden px-6 py-12">
    <!-- Creates the cyan and purple glow behind the login form -->
    <div class="absolute inset-0 -z-10 bg-[radial-gradient(circle_at_top_left,_rgba(34,211,238,0.18),_transparent_35%),radial-gradient(circle_at_bottom_right,_rgba(168,85,247,0.18),_transparent_30%)]"></div>

    <!-- This card holds the private administrator login form -->
    <section class="w-full max-w-md rounded-3xl border border-white/10 bg-slate-900/70 p-8 shadow-2xl shadow-black/20 backdrop-blur-xl sm:p-10">
      <div class="text-center">
        <span class="mx-auto flex h-12 w-12 items-center justify-center rounded-xl border border-cyan-400/30 bg-cyan-400/10 text-sm font-bold text-cyan-300">MW</span>
        <p class="mt-6 text-xs font-semibold uppercase tracking-[0.3em] text-cyan-400">Private Access</p>
        <h1 class="mt-3 text-3xl font-semibold text-slate-50">Admin Login</h1>
        <p class="mt-3 text-sm leading-6 text-slate-300">Sign in to manage inquiries and portfolio information.</p>
      </div>

      <!-- The backend login check will be connected to this form later -->
      <form action="/admin/adminLogin.cfm" method="post" class="mt-8 space-y-5">
        <div>
          <label for="admin-email" class="mb-2 block text-sm font-medium text-slate-100">Email address</label>
          <input
            id="admin-email"
            name="email"
            type="email"
            autocomplete="username"
            required
            class="w-full rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-50 outline-none transition placeholder:text-slate-500 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20"
            placeholder="Enter your email"
          >
        </div>

        <div>
          <label for="admin-password" class="mb-2 block text-sm font-medium text-slate-100">Password</label>
          <input
            id="admin-password"
            name="password"
            type="password"
            autocomplete="current-password"
            required
            class="w-full rounded-xl border border-white/15 bg-white/10 px-4 py-3 text-slate-50 outline-none transition placeholder:text-slate-500 focus:border-cyan-400 focus:ring-2 focus:ring-cyan-400/20"
            placeholder="Enter your password"
          >
        </div>

        <button type="submit" class="w-full rounded-xl bg-cyan-500 px-5 py-3 font-semibold text-slate-950 shadow-lg shadow-cyan-500/20 transition hover:bg-cyan-400 focus:outline-none focus:ring-2 focus:ring-cyan-300 focus:ring-offset-2 focus:ring-offset-slate-950">
          Sign In
        </button>
      </form>

      <!-- This temporary shortcut only appears while the page is running on this computer -->
      <cfif cgi.remote_addr == "127.0.0.1" OR cgi.remote_addr == "0:0:0:0:0:0:0:1" OR cgi.remote_addr == "::1">
        <div class="mt-5 border-t border-white/10 pt-5 text-center">
          <p class="mb-3 text-xs text-amber-300">Development preview only</p>
          <a href="/admin/adminHome.cfm" class="block w-full rounded-xl border border-amber-300/30 bg-amber-300/10 px-5 py-3 text-sm font-semibold text-amber-200 transition hover:bg-amber-300/20">
            Preview Admin Dashboard
          </a>
        </div>
      </cfif>

      <a href="/" class="mt-6 block text-center text-sm text-slate-400 transition hover:text-cyan-300">← Return to portfolio</a>
    </section>
  </main>
</body>
</html>
