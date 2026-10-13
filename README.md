# Ledger Broker CRM

Forex broker back-office CRM prototype. Single-page, no backend, all figures are sample data.

**Modules:** Dashboard with Copilot insights, Action Center (one approval queue), Management Report, User Management (Client 360, KYC, bank details, credential resets), Bonus, IB Management (7-level commission, tree), Group Management, Virtual Accounts, Transactions (deposit / withdraw / IB payout / internal transfer with a review step), Marketing sub-CRM, Email, News, Notifications, Rewards, 9 reports, Risk Reports, Tickets, Settings (Business Rules, MT5 servers, white-label brands, audit log), Sub Admin with permission matrix.

**Copilot** (top bar, floating orb, or Ctrl+J) answers questions over the ledger. Rule-based in this prototype.

**Business rules:** 32 guards on money out, money in, identity, IB structure and data integrity. See Settings → Business Rules in the app.

## Demo login
Any email, any password, any 6-digit code in the authenticator field.

## Structure
- `index.html` — the built page (what gets deployed)
- `build/` — the source parts; `./build.sh` concatenates them into `index.html`

## Deploy
Static. Works on Vercel, GitHub Pages, Netlify or any web server: serve `index.html`.
