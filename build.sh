#!/usr/bin/env bash
# Rebuilds index.html from the parts in build/. Run from the repo root.
set -e
cd "$(dirname "$0")"
cat build/p1_head.html build/p2_shell.html build/p3_data.js build/p4_core.js build/p4b_ai_fx.js build/p5_screens_a.js build/p6_screens_users.js build/p7_screens_ib_tx.js build/p8_screens_rest.js build/p9_boot.js > /tmp/ledger-body.html
python3 - <<'PY'
src=open('/tmp/ledger-body.html',encoding='utf-8').read()
i=src.index('</style>')+len('</style>')
html='<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="robots" content="noindex,nofollow">\n<meta name="description" content="Ledger Broker CRM: forex broker back-office prototype with Copilot, Action Center and 32 business rules. Sample data only.">\n<meta name="theme-color" content="#060A14">\n'+src[:i]+'\n<style>:root{padding:0}</style>\n</head>\n<body>'+src[i:]+'\n</body>\n</html>\n'
open('index.html','w',encoding='utf-8').write(html)
print('index.html rebuilt')
PY
