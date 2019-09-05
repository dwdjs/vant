#!/usr/bin/env sh
rm -rf docs/dist

npx cross-env NODE_ENV=production webpack --config build/webpack.site.prd.js

# superman-cdn /vant ./docs/dist/*.js

# rm -rf docs/dist/*.js

cp docs/site/CNAME docs/dist
gh-pages -d docs/dist --add
