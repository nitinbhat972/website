<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <style>
          :root { color-scheme: dark; font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace; background: #09090b; color: #a1a1aa; }
          body { max-width: 48rem; margin: 0 auto; padding: 3rem 1.25rem; }
          h1 { margin: 0; color: #f4f4f5; font-size: 1.5rem; letter-spacing: -0.025em; }
          p { line-height: 1.7; }
          header { padding-bottom: 2rem; border-bottom: 1px solid #27272a; }
          header p { color: #71717a; font-size: 0.875rem; }
          a { color: #d4d4d8; text-decoration: none; }
          a:hover { color: #fafafa; text-decoration: underline; text-underline-offset: 0.25rem; }
          article { padding: 1.5rem 0; border-bottom: 1px solid #27272a; }
          article h2 { margin: 0; font-size: 1rem; font-weight: 500; }
          article p { margin: 0.75rem 0 0; color: #a1a1aa; font-size: 0.875rem; }
          time { display: block; margin-top: 0.75rem; color: #52525b; font-size: 0.75rem; }
          @media (max-width: 640px) { body { padding-top: 2rem; } }
        </style>
      </head>
      <body>
        <header>
          <h1><xsl:value-of select="rss/channel/title"/></h1>
          <p><xsl:value-of select="rss/channel/description"/></p>
        </header>
        <main>
          <xsl:for-each select="rss/channel/item">
            <article>
              <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
              <p><xsl:value-of select="description"/></p>
              <time><xsl:value-of select="pubDate"/></time>
            </article>
          </xsl:for-each>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
