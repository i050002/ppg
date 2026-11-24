# Finger PPG Lab
1. Run database.sql once in Supabase SQL Editor.
2. Set project URL and publishable/anon key in config.js. Never use service_role.
3. Enable email authentication and configure Site URL / redirect URL in Supabase Authentication.
4. Deploy index.html and config.js to HTTPS (e.g. GitHub Pages).
5. Register, confirm email if required, sign in, start measurement and stop/save.
Each user can only read/delete their own measurements (RLS). Use participant IDs rather than names and obtain consent. Old browser history is not migrated. Camera support and flashlight depend on browser/device. First estimates require about 4–6 s of clean signal, possibly longer; not a medical device. Automatic stop at 120 seconds.
