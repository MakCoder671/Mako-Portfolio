<!DOCTYPE html>
<html lang="en" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="robots" content="noindex, nofollow">
  <title>Admin Dashboard | Mako Portfolio</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/admin/admin.css">
</head>

<body class="min-h-screen text-slate-100" data-theme="dark">
  <!-- Holds the private dashboard and keeps its background consistent with the portfolio -->
  <div class="relative isolate min-h-screen overflow-hidden">
    <div class="absolute inset-0 -z-10 bg-[radial-gradient(circle_at_top_left,_rgba(34,211,238,0.16),_transparent_35%),radial-gradient(circle_at_bottom_right,_rgba(168,85,247,0.14),_transparent_30%)]"></div>

    <!-- Simple navigation for the private admin area -->
    <header class="mx-auto flex max-w-7xl items-center justify-between gap-4 px-6 py-6 lg:px-8">
      <a href="/" class="flex items-center gap-3 text-slate-50">
        <span class="flex h-10 w-10 items-center justify-center rounded-xl border border-cyan-400/30 bg-cyan-400/10 text-sm font-bold text-cyan-300">MW</span>
        <span>
          <span class="block text-sm font-semibold">Mako Wusstig</span>
          <span class="block text-xs text-slate-400">Admin workspace</span>
        </span>
      </a>

      <!-- This becomes the real logout action after authentication is connected -->
      <a href="/admin/adminLogin.cfm" class="rounded-full border border-white/15 bg-white/10 px-4 py-2 text-sm font-medium text-slate-100 transition hover:bg-white/20">
        Log Out
      </a>
    </header>

    <main class="mx-auto max-w-7xl px-6 pb-16 pt-8 lg:px-8">
      <section>
        <p class="text-xs font-semibold uppercase tracking-[0.3em] text-cyan-400">Admin Dashboard</p>
        <h1 class="mt-3 text-3xl font-semibold text-slate-50 sm:text-4xl">Business overview</h1>
        <p class="mt-3 max-w-2xl text-sm leading-6 text-slate-300">Your inquiry, job, and revenue information will appear here once the database is connected.</p>
      </section>

      <!-- Raised dashboard box that will display the four main business totals -->
      <section class="dashboard-metrics mt-10" aria-labelledby="dashboard-metrics-title">
        <div class="mb-6 flex flex-wrap items-center justify-between gap-3">
          <h2 id="dashboard-metrics-title" class="text-lg font-semibold text-slate-50">Dashboard totals</h2>
          <span class="rounded-full border border-white/10 bg-white/10 px-3 py-1 text-xs text-slate-400">Waiting for data</span>
        </div>

        <div class="grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
          <article class="metric-card">
            <p class="text-xs font-semibold uppercase tracking-wider text-cyan-400">Jobs in Process</p>
            <p class="mt-4 text-3xl font-semibold text-slate-50">—</p>
          </article>

          <article class="metric-card">
            <p class="text-xs font-semibold uppercase tracking-wider text-purple-400">Total Jobs</p>
            <p class="mt-4 text-3xl font-semibold text-slate-50">—</p>
          </article>

          <article class="metric-card">
            <p class="text-xs font-semibold uppercase tracking-wider text-emerald-400">Completed</p>
            <p class="mt-4 text-3xl font-semibold text-slate-50">—</p>
          </article>

          <article class="metric-card">
            <p class="text-xs font-semibold uppercase tracking-wider text-amber-300">Total Revenue</p>
            <p class="mt-4 text-3xl font-semibold text-slate-50">—</p>
          </article>
        </div>
      </section>

      <!-- Customer tickets will be created from contact form submissions -->
      <section class="mt-14" aria-labelledby="inquiries-title">
        <div class="flex flex-wrap items-end justify-between gap-4">
          <div>
            <p class="text-xs font-semibold uppercase tracking-[0.3em] text-purple-400">Customer Tickets</p>
            <h2 id="inquiries-title" class="mt-2 text-2xl font-semibold text-slate-50">Contact inquiries</h2>
          </div>
          <span class="text-sm text-slate-400">0 tickets</span>
        </div>

        <!-- This empty ticket shows where the selected customer's information will appear -->
        <article class="customer-ticket mt-6 overflow-hidden rounded-3xl border border-white/10 bg-slate-900/70 shadow-2xl shadow-black/20" data-customer-name="">
          <div class="grid border-b border-white/10 md:grid-cols-[1fr_auto]">
            <div class="p-6 sm:p-8">
              <div class="flex flex-wrap items-center gap-3">
                <span class="rounded-full border border-cyan-400/30 bg-cyan-400/10 px-3 py-1 text-xs font-semibold text-cyan-300">New inquiry</span>
                <span class="text-xs text-slate-500">Ticket #—</span>
              </div>
              <h3 class="mt-5 text-xl font-semibold text-slate-50">No customer selected</h3>
              <p class="mt-2 text-sm text-slate-400">New contact form submissions will create tickets here.</p>
            </div>

            <dl class="grid gap-4 border-t border-white/10 bg-white/5 p-6 text-sm md:min-w-72 md:border-l md:border-t-0 sm:p-8">
              <div>
                <dt class="text-xs font-semibold uppercase tracking-wider text-slate-500">Email</dt>
                <dd class="mt-1 text-slate-300">—</dd>
              </div>
              <div>
                <dt class="text-xs font-semibold uppercase tracking-wider text-slate-500">Phone</dt>
                <dd class="mt-1 text-slate-300">—</dd>
              </div>
              <div>
                <dt class="text-xs font-semibold uppercase tracking-wider text-slate-500">Received</dt>
                <dd class="mt-1 text-slate-300">—</dd>
              </div>
            </dl>
          </div>

          <!-- Displays the full message sent through the public contact page -->
          <div class="border-b border-white/10 p-6 sm:p-8">
            <p class="text-xs font-semibold uppercase tracking-wider text-cyan-400">Customer Message</p>
            <div class="mt-4 min-h-32 rounded-2xl border border-white/10 bg-slate-950/50 p-5 text-sm leading-7 text-slate-400">
              The customer's complete message will appear in this box.
            </div>
          </div>

          <!-- Reply composer will use the selected customer's name and email later -->
          <form class="p-6 sm:p-8" action="#" method="post">
            <label for="reply-message" class="text-xs font-semibold uppercase tracking-wider text-purple-400">Your Reply</label>
            <div class="mt-4 rounded-2xl border border-white/10 bg-slate-950/50 p-5 focus-within:border-cyan-400/50">
              <p id="reply-greeting" class="text-sm font-medium text-slate-200">Hi [customer name],</p>
              <textarea id="reply-message" name="replyMessage" rows="7" disabled class="mt-3 w-full resize-y bg-transparent text-sm leading-7 text-slate-100 outline-none placeholder:text-slate-500 disabled:cursor-not-allowed" placeholder="Select a customer ticket before writing a reply."></textarea>
            </div>

            <div class="mt-5 flex flex-wrap items-center justify-between gap-4">
              <p class="text-xs text-slate-500">Replies will be enabled after email and database connections are ready.</p>
              <button type="submit" disabled class="cursor-not-allowed rounded-xl bg-cyan-500/40 px-5 py-3 text-sm font-semibold text-slate-400">
                Send Reply
              </button>
            </div>
          </form>
        </article>
      </section>
    </main>
  </div>

  <script src="/admin/adminHome.js"></script>
</body>
</html>
