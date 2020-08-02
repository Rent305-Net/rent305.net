#!/bin/bash

mkdir -p build
cp *.html build
cd build

ROOT_URL=https://rent305.net
SITEMAP=sitemap.xml
DATE=`date -I`

echo '<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">' > $SITEMAP

for f in *.html; do
echo "  <url>
    <loc>${ROOT_URL}/${f}</loc>
    <lastmod>${DATE}</lastmod>
  </url>" >> $SITEMAP
done
echo '</urlset>' >> $SITEMAP