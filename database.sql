create table if not exists public.ppg_measurements (
 id uuid primary key,
 user_id uuid not null references auth.users(id) on delete cascade,
 created_at timestamptz not null default now(),
 measurement jsonb not null
);
alter table public.ppg_measurements enable row level security;
create policy "Read own measurements" on public.ppg_measurements for select to authenticated using (auth.uid() = user_id);
create policy "Insert own measurements" on public.ppg_measurements for insert to authenticated with check (auth.uid() = user_id);
create policy "Update own measurements" on public.ppg_measurements for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Delete own measurements" on public.ppg_measurements for delete to authenticated using (auth.uid() = user_id);
revoke all on public.ppg_measurements from anon;
grant select, insert, update, delete on public.ppg_measurements to authenticated;
